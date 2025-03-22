# Welcome to the **Token Item** module by [Moloko](https://github.com/levrules/mod-token-item).
The module allows you to exchange tokens for sets based on specialization, class, and faction.

Preview [Video](https://disk.yandex.ru/d/pYpPfkFn-b8sUg)

---
### RU locales [README_RU](https://github.com/levrules/mod-token-item/blob/main/README_RU.md)


## Features

- &#9989; Item issuance based on the active talent tree (the calculation is based on the tree with the most upgraded talent points)

### Features

```
# TokenDebug.Enable - debug trace
# 0 - disabled
# 1 - enabled
# default: 0 (enabled)

TokenDebug.Enable == 0
```

---

## Installation

1. Clone this repository:
```bash
cd path/to/azerothcore/modules
git clone https://github.com/levrules/mod-token-item.git
```
2. Re-run cmake and run a clean build of AzerothCore.
3. Change the settings in the config if necessary.
4. Restart the server to apply the changes.

&#9888; In the file [spell_dbc](https://github.com/levrules/mod-token-item/blob/67e9b15d7dcc672f332bf1e037878ed64f9eb56b/data/sql/world/token_item.sql#L12) added as a custom but will not work. In order for it to work as it should, you will need to make edits in the client part of spell.dbc and also on the server

&#9888; The module has changes in the `acore_string` tables where the identifiers `35411, 35412, 35413, 35414, 35415, 35416, 35417` will be changed, if these identifiers are used, it is recommended to change them in the `token_item.h` file and also in the `token_item.sql` file.

---

## Support

If you encounter problems or have suggestions for improvement, create a request in the [Issues](https://github.com/levrules/mod-token-item) section of this repository.

---

## License

The project is licensed under the GNU Affero General Public License (AGPL-3.0). More details can be found in the [LICENSE](LICENSE) file.