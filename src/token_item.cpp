#include "ScriptMgr.h"
#include "Player.h"
#include "SpellMgr.h"
#include "Chat.h"
#include "DBCStores.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "token_item.h"
#include "Configuration/Config.h"


// Функция для отладки
// class DebugChatHandler
// {
// public:
//     static void Send(Player* player, const char* format, ...)
//     {
//         if (!player)
//             return;

//         va_list args;
//         va_start(args, format);
//         char message[1024];
//         vsnprintf(message, sizeof(message), format, args);
//         va_end(args);

//         bool TokenDebug = sConfigMgr->GetOption<bool>("TokenDebug.Enable", true);

//         if (!TokenDebug)
//             return;

//         ChatHandler(player->GetSession()).PSendSysMessage("|cff00ff00[DEBUG]:|r {}", message);
//     }
// };

// Определение основной ветки талантов
uint32 GetPrimaryTalentTree(Player* player)
{
    if (!player)
        return 0;

    std::map<uint32, uint32> talentPoints;

    for (uint32 talentId = 0; talentId < sTalentStore.GetNumRows(); ++talentId)
    {
        TalentEntry const* talent = sTalentStore.LookupEntry(talentId);
        if (!talent)
            continue;

        for (uint32 rank = 0; rank < MAX_TALENT_RANK; ++rank)
        {
            uint32 spellId = talent->RankID[rank];
            if (spellId && player->HasSpell(spellId))
            {
                talentPoints[talent->TalentTab]++;
            }
        }
    }

    uint32 primaryTab = 0;
    uint32 maxPoints = 0;

    for (const auto& entry : talentPoints)
    {
        if (entry.second > maxPoints)
        {
            maxPoints = entry.second;
            primaryTab = entry.first;
        }
    }

    return primaryTab;
}

// Основной класс заклинания
class spell_replace_item : public SpellScript
{
    PrepareSpellScript(spell_replace_item);

private:
    uint32 storedItemId = 0; // Сохранение itemId для дальнейшего использования

public:
    SpellCastResult CheckCast()
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player)
            return SPELL_FAILED_DONT_REPORT;

        uint32 spellId = GetSpellInfo()->Id;
        Item* castItem = GetCastItem();

        if (!castItem)
        {
            if (TokenDebug) {
                ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ERROR);
            }

            // DebugChatHandler::Send(player, "Ошибка: каст не с предмета!");
            return SPELL_FAILED_DONT_REPORT;
        }

        storedItemId = castItem->GetEntry(); // Сохранение ID предмета

        uint32 classId = player->getClass();
        uint32 factionId = player->GetTeamId();
        uint32 specId = GetPrimaryTalentTree(player);

        QueryResult result = WorldDatabase.Query(
            "SELECT new_item FROM token_item WHERE spell_id = {} AND item_id = {} AND class = {} AND spec = {} AND faction = {}",
            spellId, storedItemId, classId, specId, factionId
        );

        if (!result) 
        {
            if (TokenDebug) {
                ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ERR_NOT_FOUND);
            }
            // DebugChatHandler::Send(player, "Ошибка: предмет не найден в БД!");
            return SPELL_FAILED_DONT_REPORT;
        }

        Field* fields = result->Fetch();
        uint32 newItemEntry = fields[0].Get<uint32>();

        if (TokenDebug) {
            ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_CHECK,
                spellId, storedItemId, classId, specId, factionId, newItemEntry);
        }
        // DebugChatHandler::Send(player, "Проверка БД: spell_id=%u, item_id=%u, class=%u, spec=%u, faction=%u, new_item=%u",
                            //    spellId, storedItemId, classId, specId, factionId, newItemEntry);

        if (!newItemEntry)
        {
            if (TokenDebug) {
                ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ERR_NOT_FOUND1);
            }
            // DebugChatHandler::Send(player, "Ошибка: new_item пустой!");
            return SPELL_FAILED_DONT_REPORT;
        }

        if (TokenDebug) {
            ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_SUCCESS_CAST);
        }
        // DebugChatHandler::Send(player, "Каст разрешён!");
        return SPELL_CAST_OK;
    }

    void HandleItemReward()
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player)
            return;

        uint32 spellId = GetSpellInfo()->Id;
        uint32 classId = player->getClass();
        uint32 factionId = player->GetTeamId();
        uint32 specId = GetPrimaryTalentTree(player);

        Item* castItem = GetCastItem();
        storedItemId = castItem->GetEntry(); // Сохранение ID предмета

        QueryResult result = WorldDatabase.Query(
            "SELECT new_item FROM token_item WHERE spell_id = {} AND item_id = {} AND class = {} AND spec = {} AND faction = {}",
            spellId, storedItemId, classId, specId, factionId
        );

        if (!result)
        {
            if (TokenDebug) {
                ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ERR_EMPTY_BD);
            }
            // DebugChatHandler::Send(player, "Ошибка: не найден заменяющий предмет в БД!");
            return;
        }

        Field* fields = result->Fetch();
        uint32 newItemEntry = fields[0].Get<uint32>();

        if (!newItemEntry)
        {
            if (TokenDebug) {
                ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ERR_NOT_FOUND1);
            }
            // DebugChatHandler::Send(player, "Ошибка: new_item пустой!");
            return;
        }

        if (TokenDebug) {
            ChatHandler(player->GetSession()).PSendSysMessage(SPELL_ITEM_TOKEN_ADD_ITEM, newItemEntry);
        }
        // DebugChatHandler::Send(player, "Добавление предмета: %u", newItemEntry);

        // Добавляем новый предмет
        player->AddItem(newItemEntry, 1);
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_replace_item::CheckCast);
        OnCast += SpellCastFn(spell_replace_item::HandleItemReward);
    }
};



class TokenDebug_conf : public WorldScript
{
public:
    TokenDebug_conf() : WorldScript("TokenDebug_conf") {
        LOG_INFO("module", ">> Token Item Reward its running.");
        if (TokenDebug)
        {
            LOG_INFO("module", ">> DEBUG: TokenDebug.Enable: {}", TokenDebug);

        }
    }

    void OnBeforeConfigLoad(bool reload) 
    {
        if (!reload)
            TokenDebug = sConfigMgr->GetOption<bool>("TokenDebug.Enable", false);
    }
};

// Регистрация модуля
void AddTokenItemScripts()
{
    new TokenDebug_conf();
    RegisterSpellScript(spell_replace_item);
}
