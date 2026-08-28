# Non-native class trainers — install & uninstall notes

Adds named, race-appropriate class trainers for **non-native** race/class combinations to the
secondary quest-hub towns, so an "All Races All Classes" player can train without running to a
major city. Companion to `mod-arac` (All Races All Classes).

Installed on: 2026-08-23. Applied SQL: `data/sql/updates/pending_db_world/rev_20260823204940.sql`
(applied directly against `acore_world` via `docker exec`, then the worldserver was restarted).

All new rows use reserved custom ranges so they are trivial to identify and remove.

---

## 1. What was changed

### 1.1 Class trainers (early ranks only, `ReqLevel <= 20`)

`trainer` + `trainer_spell` — 8 new class trainer spell lists, each teaching only the low-level
spells (so players still need a city trainer for higher ranks):

| TrainerId | Class | TrainerId | Class |
|-----------|-------|-----------|-------|
| 900001 | Paladin | 900005 | Shaman |
| 900002 | Hunter  | 900006 | Mage |
| 900003 | Rogue   | 900007 | Warlock |
| 900004 | Priest  | 900008 | Druid |

`trainer_spell` contains 253 rows across these 8 `TrainerId`s (copied from the stock full
trainers 3/7/9/11/14/16/31/33, filtered to `ReqLevel <= 20`).

### 1.2 Named NPCs (26 total)

`creature_template` (entries `9000001–9000033`, 26 used), `creature_template_model`,
`creature_default_trainer`, and `creature` spawns (guids `5301000–5301025`):

| Entry | Name | Class | Town |
|-------|------|-------|------|
| 9000001 | Brennan Hawkeye | Hunter | Goldshire |
| 9000002 | Sage Caedmon | Shaman | Goldshire |
| 9000003 | Keeper Rowan | Druid | Goldshire |
| 9000007 | Stonecaller Tholgrim | Shaman | Kharanos |
| 9000010 | Mosswatcher Dunmarr | Druid | Kharanos |
| 9000011 | Moonwarden Ashae | Paladin | Dolanaar |
| 9000012 | Spiritseer Theron | Shaman | Dolanaar |
| 9000013 | Arcanist Lumeniel | Mage | Dolanaar |
| 9000014 | Duskweaver Vaelin | Warlock | Dolanaar |
| 9000015 | Shadowhand Jorren | Rogue | Azure Watch |
| 9000016 | Voidcaller Aldon | Warlock | Azure Watch |
| 9000017 | Grovekeeper Aelee | Druid | Azure Watch |
| 9000018 | Bloodsworn Grokash | Paladin | Razor Hill |
| 9000020 | Flamespeaker Rokhan | Mage | Razor Hill |
| 9000022 | Wildcaller Thamra | Druid | Razor Hill |
| 9000023 | Gravewarden Mordecai | Paladin | Brill |
| 9000024 | Corpsewalker Delia | Hunter | Brill |
| 9000025 | Bonespeaker Graven | Shaman | Brill |
| 9000026 | Rotshaper Fenwick | Druid | Brill |
| 9000027 | Sunwalker Kodoheart | Paladin | Bloodhoof Village |
| 9000028 | Shadowhoof Mala | Rogue | Bloodhoof Village |
| 9000029 | Sage Hornedowl | Priest | Bloodhoof Village |
| 9000030 | Skycaller Tawa | Mage | Bloodhoof Village |
| 9000031 | Voidtotem Kaela | Warlock | Bloodhoof Village |
| 9000032 | Stormcaller Thalas | Shaman | Falconwing Square |
| 9000033 | Bowerkeeper Solanar | Druid | Falconwing Square |

Details baked into `creature_template`: `npcflag=49` (gossip + trainer + class trainer),
`unit_class` mapped to a valid creature combat class (1/2/8), faction set per town's race,
`minlevel/maxlevel=35`, non-attackable.

### 1.3 Guard "point me to a trainer" wiring

`points_of_interest` (`ID 1010–1042`, 26 used) and `gossip_menu_option`:

- 16 new class options added to the guards of the 5 towns that have trainer-gossip guards:
  menus `3283` (Razor Hill), `3329` (Bloodhoof Village), `3354` (Brill), `3564` (Dolanaar),
  `8137` (Azure Watch).
- 2 existing "no trainer available" options repointed to the new trainers:
  - `gossip_menu_option` (3354, 1) "Paladin" → POI 1032 (was `ActionPoiID=0`, `ActionMenuID=8166`)
  - `gossip_menu_option` (8137, 0) "Druid"   → POI 1026 (was `ActionPoiID=0`, `ActionMenuID=8139`)

### 1.4 Simple "wrong class" dialog

`npc_text` (`ID 90301–90308`), `gossip_menu` (`MenuID 90201–90208`), and 8
`gossip_menu_option` rows ("Please teach me.") so a player of the wrong class still gets a
gossip greeting instead of no cursor at all.

---

## 2. How to uninstall

A self-contained reverse SQL is committed alongside this file:
**`trainer-npc-uninstall.sql`**. It needs no backup — all rows are identified by their reserved
ranges (and the two repointed guard options are restored to their original values).

```bash
docker exec -i ac-database mysql --user=root --password=password acore_world < trainer-npc-uninstall.sql
```

> If the DB root password differs from `password` (see `.env` / `DOCKER_DB_ROOT_PASSWORD`), adjust it.

Then:

1. Delete the applied update file so the worldserver updater doesn't re-import it later:
   `data/sql/updates/pending_db_world/rev_20260823204940.sql`
2. Restart the worldserver: `docker compose restart ac-worldserver`

The uninstall script, in order:

1. Restores the 2 repointed guard options (`3354,1` and `8137,0`).
2. Deletes the 16 added guard gossip options.
3. Deletes the 8 "Please teach me." options, 8 `gossip_menu`, 8 `npc_text`.
4. Deletes the 26 `points_of_interest` rows.
5. Deletes the 26 `creature` spawns (guid `5301000–5301032`).
6. Deletes `creature_default_trainer`, `creature_template_model`, `creature_template`
   (entries `9000001–9000033`).
7. Deletes `trainer_spell` and `trainer` (`900001–900008`).

---

## 3. Verification

After install, these should return non-zero (26 NPCs, 8 trainers):

```bash
docker exec ac-database mysql --user=root --password=password --batch --skip-column-names acore_world \
  -e "SELECT (SELECT COUNT(*) FROM creature_template WHERE entry BETWEEN 9000001 AND 9000033),
           (SELECT COUNT(*) FROM trainer WHERE Id BETWEEN 900001 AND 900008),
           (SELECT COUNT(*) FROM creature WHERE guid BETWEEN 5301000 AND 5301032);"
```

Expected: `26  8  26`. After uninstall: `0  0  0`.

## Notes

- This change **does not** touch the stock generic trainers (`creature_template` 26324–26332),
  which remain event-gated behind "Arena Tournament" (game event 31) and hidden.
- The trainers teach **early ranks only** by design; cities still matter for higher ranks.
- Two bug fixes were required during implementation (documented for reference):
  1. `creature_template.unit_class` only accepts 1 (Warrior) / 2 (Paladin) / 4 (Rogue) / 8 (Mage);
     player class IDs had to be mapped to these.
  2. `npcflag` needed the GOSSIP flag (1), otherwise `Unit::BuildValuesUpdate` strips the TRAINER
     flag for wrong-class players and they get no dialog cursor.
