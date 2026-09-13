-- Scale the remaining Bind-on-Equip (Boe) drop sources 5x rarer to match
-- rev_20260903_scale_dungeon_boe_drops.sql. Only BoE (Bonding = 2) rare/epic
-- lists are affected; Bind-on-Pickup drops (Kara/The Eye/Sunwell trash epics,
-- boss loot, the Bladespire demon table 14501) are intentionally untouched.
-- World-pool blue bands are untouched; only the epic "Purples" bands are scaled.

-- 1) Zul'Farrak rare BoE list - per-dungeon table the earlier nerf missed
UPDATE `creature_loot_template` SET `Chance` = `Chance` / 5
WHERE `Reference` = 1209000 AND `Chance` > 0;

-- 2) Molten Core epic BoE trash list (BoE epic belt/bracer set)
UPDATE `creature_loot_template` SET `Chance` = `Chance` / 5
WHERE `Reference` = 1409000 AND `Chance` > 0;

-- 3) Northrend 5-man dungeon "Trash Rare" BoE lists (normal + heroic)
UPDATE `creature_loot_template` SET `Chance` = `Chance` / 5
WHERE `Reference` IN (1574000,1574100,1575000,1575100,1578000,1578100,
                      1595000,1599000,1599100,1600000,1600100,1601000,
                      1601100,1602000,1602100,1604000,1604100,1608000,
                      1608100,1619000,1619100)
  AND `Chance` IN (1, 3);

-- 4) Legacy Vanilla world BoE lists: rares 24017-24069 and epics 24079-24091
--    (e.g. Krol Blade, Edgemaster's Handguards, Freezing Band, Alcor's Sunrazor)
UPDATE `creature_loot_template` SET `Chance` = `Chance` / 5
WHERE `Reference` IN (24017,24019,24021,24026,24028,24030,24032,24034,
                      24038,24040,24042,24044,24046,24049,24051,24053,
                      24055,24057,24061,24063,24065,24067,24069,24079,
                      24080,24081,24082,24083,24084,24085,24086,24087,
                      24088,24089,24090,24091)
  AND `Chance` > 0;

-- 5) World-drop BoE epic bands ("Vanilla/TBC Purples") rolled from per-level
--    world-loot pools; all pure BoE epics.
UPDATE `reference_loot_template` SET `Chance` = `Chance` / 5
WHERE `Comment` LIKE '%Purples%'
  AND `Reference` IN (1044046,1044248,1044450,1044652,1044854,1045056,
                      1045258,1045460,1045662,1045863,1046063,1146773);
