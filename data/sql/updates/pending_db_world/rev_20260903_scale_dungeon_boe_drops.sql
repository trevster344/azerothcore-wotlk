-- Scale the per-dungeon "X BoEs" rare-drop tables 5x rarer to reduce BoE-rare
-- frequency across classic/TBC-era dungeons. Every trash mob in these dungeons
-- rolled a dedicated BoE list at 0.5% per kill (Dire Maul wings at 1.5%);
-- lowered to 0.1% / 0.3%. Boss loot, world-loot bands, and BoE epics untouched.

UPDATE `creature_loot_template` SET `Chance` = `Chance` / 5
WHERE `Reference` IN (1033000,1047000,1048000,1070000,1090000,1109000,
                      1129000,1189000,1230000,1329000,1429001,1429002,1429003,1429004)
  AND `Chance` IN (0.5, 1.5);
