CREATE TABLE `token_item`  (
  `spell_id` int NOT NULL COMMENT 'Spell ID',
  `class` tinyint NOT NULL DEFAULT 0 COMMENT 'Class value\r\n\r\n1 - Warrior\r\n2 - Paladin\r\n3 - Hunter\r\n4 - Rogue\r\n5 - Priest\r\n6 - Death Knight\r\n7 - Shaman\r\n8 - Mage\r\n9 - Warlock\r\n11 - Druid',
  `spec` int NOT NULL DEFAULT 0 COMMENT 'WARRIOR_ARMS = 161\r\nWARRIOR_FURY = 164\r\nWARRIOR_PROTECTION = 163\r\nPALADIN_HOLY = 382\r\nPALADIN_PROTECTION = 383\r\nPALADIN_RETRIBUTION = 381\r\nHUNTER_BEAST_MASTERY = 361\r\nHUNTER_MARKSMANSHIP = 363\r\nHUNTER_SURVIVAL = 362\r\nROGUE_ASSASSINATION = 182\r\nROGUE_COMBAT = 181\r\nROGUE_SUBTLETY = 183\r\nWARLOCK_AFFLICTION = 302\r\nWARLOCK_DEMONOLOGY = 303\r\nWARLOCK_DESTRUCTION = 301\r\nPRIEST_DISCIPLINE = 201\r\nPRIEST_HOLY = 202\r\nPRIEST_SHADOW = 203\r\nDEATH_KNIGHT_BLOOD = 398\r\nDEATH_KNIGHT_FROST = 399\r\nDEATH_KNIGHT_UNHOLY = 400\r\nSHAMAN_ELEMENTAL = 261\r\nSHAMAN_ENHANCEMENT = 263\r\nSHAMAN_RESTORATION = 262\r\nMAGE_ARCANE = 81\r\nMAGE_FIRE = 41\r\nMAGE_FROST = 61\r\nDRUID_BALANCE = 283\r\nDRUID_FERAL_COMBAT = 281\r\nDRUID_RESTORATION = 282',
  `faction` tinyint NOT NULL DEFAULT 0 COMMENT 'Faction value:\r\n0 - Alliance\r\n1 - Horde',
  `new_item` int NOT NULL COMMENT 'New Item ID',
  `item_id` int NOT NULL COMMENT 'Token ID',
  PRIMARY KEY (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;


REPLACE INTO `spell_dbc` (`ID`, `Attributes`, `AttributesEx`, `AttributesEx2`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `Effect_1`, `SpellIconID`, `SpellPriority`, `Name_Lang_enUS`, `Name_Lang_zhTW`, `Description_Lang_enTW`, `AuraDescription_Lang_zhTW`, `StartRecoveryCategory`, `StartRecoveryTime`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) 
VALUES (103205, 419495936, 32, 128, 4, 1500, 1500, 1, 101, 1, -1, 3, 1, 50, 'Token Item', 'Токен предмета', 'Получить предмет из токена для $f.', 'Получить предмет из токена для $f.', 133, 1500, 1, 1, 1, 1);



REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35411, '|cff00ff00[DEBUG]:|r Error: cast not from an item!', '|cff00ff00[ОТЛАДКА]:|r Ошибка: каст не с предмета!');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35412, '|cff00ff00[DEBUG]:|r Error: item not found in DB!', '|cff00ff00[ОТЛАДКА]:|r Ошибка: предмет не найден в БД!');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35413, '|cff00ff00[DEBUG]:|r Checking the database: spell_id={}, item_id={}, class={}, spec={}, faction={}, new_item={}', '|cff00ff00[ОТЛАДКА]:|r Проверка БД: spell_id={}, item_id={}, class={}, spec={}, faction={}, new_item={}');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35414, '|cff00ff00[DEBUG]:|r Error: new_item is empty!', '|cff00ff00[ОТЛАДКА]:|r Ошибка: new_item пустой!');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35415, '|cff00ff00[DEBUG]:|r Cast success!', '|cff00ff00[ОТЛАДКА]:|r Каст разрешен!');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35416, '|cff00ff00[DEBUG]:|r Error: replacement item not found in DB!', '|cff00ff00[ОТЛАДКА]:|r Ошибка: не найден заменяющий предмет в БД!');
REPLACE INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES (35417, '|cff00ff00[DEBUG]:|r Add items: {}', '|cff00ff00[ОТЛАДКА]:|r Добавление предмета: {}');


Set 
@spellID = 103205; -- Custom Spell

REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,30979,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,30980,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,30979,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,31006,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,31006,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,31006,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,31023,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,31022,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,31024,31103);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,31030,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,31030,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,31030,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,31048,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,31047,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,31049,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,31059,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,31059,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,31059,31102);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,30997,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,30996,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,30998,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,31054,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,31054,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,31054,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,31069,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,31069,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,31070,31101);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,30977,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,30978,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,30977,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,31005,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,31005,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,31005,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,31020,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,31019,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,31021,31100);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,31029,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,31029,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,31029,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,31044,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,31045,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,31046,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,31058,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,31058,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,31058,31099);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,30993,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,30994,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,30995,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,31053,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,31053,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,31053,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,31068,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,31068,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,31067,31098);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,30989,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,30988,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,30987,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,31051,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,31051,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,31051,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,31063,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,31063,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,31064,31097);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,31027,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,31027,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,31027,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,31039,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,31037,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,31040,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,31056,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,31056,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,31056,31096);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,31003,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,31003,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,31003,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,31014,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,31012,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,31015,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,30972,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,30974,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,30972,31095);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,31001,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,31001,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,31001,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,31008,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,31007,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,31011,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,30969,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,30970,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,30969,31094);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,31026,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,31026,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,31026,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,31034,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,31032,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,31035,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,31055,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,31055,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,31055,31093);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,30982,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,30983,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,30985,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,31050,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,31050,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,31050,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,31060,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,31060,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,31061,31092);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,30975,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,30976,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,30975,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,31004,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,31004,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,31004,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,31017,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,31016,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,31018,31091);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,31028,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,31028,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,31028,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,31042,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,31041,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,31043,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,31057,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,31057,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,31057,31090);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,30990,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,30992,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,30991,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,31052,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,31052,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,31052,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,31066,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,31066,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,31065,31089);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,29053,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,29053,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,29059,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,29099,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,29094,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,29088,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,29022,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,29015,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,29022,29767);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,29036,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,29030,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,29042,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,29046,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,29046,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,29046,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,29074,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,29063,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,29069,29766);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,28966,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,28966,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,28966,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,29078,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,29078,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,29078,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,29083,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,29083,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,29083,29765);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,29023,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,29016,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,29023,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,29054,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,29054,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,29060,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,29100,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,29095,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,29089,29764);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,29037,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,29031,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,29043,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,29047,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,29047,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,29047,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,29075,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,29064,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,29070,29763);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,28967,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,28967,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,28967,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,29079,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,29079,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,29079,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,29084,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,29084,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,29084,29762);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,29021,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,29011,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,29021,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,29049,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,29049,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,29058,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,29098,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,29093,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,29086,29761);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,261,0,29035,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,262,0,29028,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,7,263,0,29040,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,181,0,29044,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,182,0,29044,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,4,183,0,29044,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,381,0,29073,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,382,0,29061,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,2,383,0,29068,29760);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,302,0,28963,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,303,0,28963,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,9,301,0,28963,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,61,0,29076,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,41,0,29076,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,8,81,0,29076,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,361,0,29081,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,363,0,29081,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,3,362,0,29081,29759);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,161,0,29020,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,163,0,29017,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,1,164,0,29020,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,201,0,29055,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,202,0,29055,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,5,203,0,29057,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,281,0,29097,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,282,0,29092,29758);
REPLACE INTO `token_item` (`spell_id`, `class`, `spec`, `faction`, `new_item`, `item_id`) VALUES (@spellID,11,283,0,29090,29758);

-- Update item_template

UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31103;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31102;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31101;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31100;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31099;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31098;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31097;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31096;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31095;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31094;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31093;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31092;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31091;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31090;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 31089;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29767;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29766;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29765;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29764;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29763;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29762;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29761;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29760;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29759;
UPDATE `item_template` SET `spellid_1` = @spellID, `spelltrigger_1` = 0, `spellcharges_1` = -1 WHERE `entry` = 29758;
