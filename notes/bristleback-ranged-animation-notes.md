# Bristleback Hunter ranged animation fix

## Problem

Barrens quilboar hunters (and many other ranged NPCs) attack at range but play no
attack animation: projectiles/damage land, but the creature's weapon is invisible and no
shoot/throw animation plays.

## Root cause

The affected creatures equip a **"Monster -" ranged item** in their ranged slot:

- `Monster - Crossbow` (2551) — Bristleback Hunter (3258), Razormane Hunter (3265),
  Riverpaw Scout (500), Razormane Pathfinder (3456), etc.
- `Monster - Gun` (2552) — Goblin Engineer (622), Dark Iron Rifleman (6523), etc.
- `Monster - Throwing Axe/Spear/Knife/Torch` (5856/5870/6886/6088) — Defias Smuggler (95),
  Witherbark Axe Thrower (2554), etc.

These "Monster -" items have broken/invisible display models in the 3.3.5 client: the
weapon never renders and no weapon-based attack animation plays, even though the spell
(Shoot/Throw) still deals damage. The items themselves are valid in the server DB and the
client Item.dbc (no "Unknown item" load errors).

Verified in-game with `.debug setvalue`: **real** weapons of every type render + animate —
`Crossbow of the Albatross` (24433), `Dark Iron Rifle` (16004), `Wicked Throwing Dagger`
(29010). Bows (including "Monster - Bow" 2550) were never affected.

## Fix

`data/sql/updates/pending_db_world/rev_20260826_bristleback_ranged_weapon_fix.sql`

```sql
UPDATE `creature_equip_template`
SET `ItemID1` = CASE `ItemID1`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID1` END,
    `ItemID2` = CASE `ItemID2`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID2` END,
    `ItemID3` = CASE `ItemID3`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID3` END
WHERE `ItemID1` IN (2551,2552,5856,5870,6088,6886)
   OR `ItemID2` IN (2551,2552,5856,5870,6088,6886)
   OR `ItemID3` IN (2551,2552,5856,5870,6088,6886);
```

Replaces the broken "Monster -" items with real weapons of the **same type** (crossbow,
gun, throwing axe/spear/knife), preserving each creature's combat identity. Bows, real
items, and NPC-Equip items are untouched. No spell/script changes needed (throwers keep
`Throw` — a real thrown weapon animates it).

Replacement map:

| Broken item | Replacement |
|---|---|
| 2551 Monster - Crossbow | 24433 Crossbow of the Albatross (verified) |
| 2552 Monster - Gun | 16004 Dark Iron Rifle (verified) |
| 5856 Monster - Throwing Axe | 28972 Flightblade Throwing Axe |
| 5870 Monster - Throwing Spear | 39995 Tuskarr Javelin |
| 6088 Monster - Torch (ranged) | 29010 Wicked Throwing Dagger |
| 6886 Monster - Throwing Knife | 29010 Wicked Throwing Dagger (verified) |

## Applying

A **worldserver restart is required**. Equipment templates are loaded only at startup
(`World.cpp` -> `ObjectMgr::LoadEquipmentTemplates()`) and neither `.reload all` nor any
`.reload <x>` command refreshes `creature_equip_template` (see `cs_reload.cpp`), so the
cached equipment data cannot be changed while the server runs.

1. Drop the SQL file into `data/sql/updates/pending_db_world/`.
2. Restart the worldserver. The DB updater applies the pending file before data loading.

For a live, temporary preview before restarting: `.npc add <entry>`, target it, then
`.debug setvalue 58 <itemid>` to set the ranged slot and watch the result (reverts on
respawn; not persistent).

## Verification (after restart)

- Bristleback Hunter / Razormane Hunter / Riverpaw Scout hold a real crossbow and animate
  the shot.
- Defias Smuggler throws a visible dagger with animation.
- Goblin Engineer / Dark Iron Rifleman hold a real rifle and animate.
- Kolkar Outrunner (bow) unchanged.
