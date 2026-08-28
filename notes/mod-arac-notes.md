# mod-arac — install & uninstall notes

Module: [heyitsbench/mod-arac](https://github.com/heyitsbench/mod-arac) — "All Races All Classes (ARAC)".
Installed on: 2026-08-22.

`mod-arac` is **not** a compiled C++ module (it has no `src/` or `CMakeLists.txt`), so nothing
was rebuilt. It is a SQL patch + a few DBC files. The game client was **not** modified (no
`Patch-A.MPQ`), which means the in-game character-creation UI does not list the new race/class
combinations — characters must be created via the GM command `character create <name> <race> <class>`
(or DB / web-admin).

---

## 1. What was changed

### 1.1 Database (`acore_world` in the `ac-database` container)

Applied `data/sql/db-world/arac.sql` from the module. Resulting changes:

| Table | Change | Rows before → after |
|---|---|---|
| `playercreateinfo` | `INSERT IGNORE` all race/class combos | 62 → 100 (+38) |
| `playercreateinfo_action` | `INSERT IGNORE` starting action bars | 358 → 571 (+213) |
| `playercreateinfo_spell_custom` | `INSERT IGNORE` starting spells | 0 → 7219 (stock was empty) |
| `playercreateinfo_skills` | `UPDATE raceMask = 0` for skills 45,46,160,173,226 | 7 rows changed |
| `quest_template` | `UPDATE AllowableRaces = 1791` (all races) for quests that were class/race-restricted | 638 rows changed |
| `player_totem_model` | `DELETE` races 1,4,5,7,10, then `INSERT` 20 totem rows | +20 rows |

### 1.2 DBC files (server-side, in the `azerothcore-wotlk_ac-client-data` Docker volume)

The three files below were overwritten at `/azerothcore/env/dist/data/dbc/`:

- `CharStartOutfit.dbc` — starting gear per race/class/gender (server reads this at char creation).
- `SkillRaceClassInfo.dbc` — which skills each race/class can learn (server reads this constantly).
- `CharBaseInfo.dbc` — not actually read by this AzerothCore build; copied for completeness.

### 1.3 Worldserver restarted

`docker compose restart ac-worldserver` (DBC + `playercreateinfo` are loaded at startup).

---

## 2. How to uninstall

Reverse order: revert the SQL, restore the stock DBC files, restart the worldserver.

### Step 1 — Revert the database

A ready-to-run reverse SQL script is committed alongside this file: **`mod-arac-uninstall.sql`**.
It is fully self-contained (literal values baked in) and does **not** depend on any backup.

```bash
docker exec -i ac-database mysql --user=root --password=password acore_world < mod-arac-uninstall.sql
```

> If the DB root password differs from `password` (see `.env` / `DOCKER_DB_ROOT_PASSWORD`), adjust it.

What the script does:

1. `DELETE FROM player_totem_model WHERE RaceID IN (1,4,5,7,10);`
2. Deletes the 38 non-stock `(race, class)` rows from `playercreateinfo`.
3. Deletes the 213 added `(race, class, button)` rows from `playercreateinfo_action`.
4. `DELETE FROM playercreateinfo_spell_custom;` (stock table was empty).
5. Restores original `raceMask` on the 7 affected `playercreateinfo_skills` rows.
6. Restores original `AllowableRaces` on the 638 affected `quest_template` rows.

### Step 2 — Restore the stock DBC files

The three stock DBC files come from the standard client-data download. Re-run the client-data
init, which re-downloads and overwrites the patched DBC (this also refreshes maps/vmaps/mmaps, so
it's a large download):

```bash
docker exec ac-worldserver rm -f /azerothcore/env/dist/data/data-version
docker compose up -d ac-client-data-init
docker compose restart ac-worldserver
```

Alternatively, extract just the three files from the client-data archive without re-downloading
everything:

```bash
curl -L https://github.com/wowgaming/client-data/releases/download/v20.0/data.zip -o /tmp/data.zip
# then copy dbc/CharStartOutfit.dbc, dbc/SkillRaceClassInfo.dbc, dbc/CharBaseInfo.dbc
# into the volume:
docker run --rm -v azerothcore-wotlk_ac-client-data:/data -v /tmp/extracted:/src --entrypoint sh alpine \
  -c "cp /src/CharStartOutfit.dbc /src/SkillRaceClassInfo.dbc /src/CharBaseInfo.dbc /data/dbc/"
docker compose restart ac-worldserver
```

### Step 3 — Restart the worldserver

```bash
docker compose restart ac-worldserver
```

---

## 3. Verification

After uninstalling, these should return the pre-ARAC values:

```bash
docker exec ac-database sh -c 'mysql --user=root --password="$MYSQL_ROOT_PASSWORD" --batch --skip-column-names acore_world \
  -e "SELECT (SELECT COUNT(*) FROM playercreateinfo), \
           (SELECT COUNT(*) FROM playercreateinfo_action), \
           (SELECT COUNT(*) FROM playercreateinfo_spell_custom), \
           (SELECT COUNT(*) FROM player_totem_model WHERE RaceID IN (1,4,5,7,10));"'
```

Expected: `62  358  0  0`.

---

## Notes

- A full pre-change dump was taken at install time: `acore_world_backup_2026-08-22.sql` (repo root).
  It is **not** required for uninstall — the reverse SQL above is self-contained — but it remains
  available as a fallback.
- Re-running `ac-db-import` (a normal `docker compose up`) does not undo this change; `arac.sql`
  was applied directly to the world DB, not through AzerothCore's update pipeline.
