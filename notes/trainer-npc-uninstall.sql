-- Reverse of the non-native class trainer change (see trainer-npc-notes.md).
-- Self-contained: every row is identified by its reserved range; the two repointed
-- guard gossip options are restored to their original values. No backup required.
-- Usage:
--   docker exec -i ac-database mysql --user=root --password=password acore_world < trainer-npc-uninstall.sql
--   (then delete data/sql/updates/pending_db_world/rev_20260823204940.sql and restart ac-worldserver)

-- 1. Restore the two guard options that were repointed to the new trainers.
UPDATE `gossip_menu_option` SET `ActionPoiID` = 0, `ActionMenuID` = 8166 WHERE `MenuID` = 3354 AND `OptionID` = 1;
UPDATE `gossip_menu_option` SET `ActionPoiID` = 0, `ActionMenuID` = 8139 WHERE `MenuID` = 8137 AND `OptionID` = 0;

-- 2. Remove the added guard "point me to a trainer" options.
DELETE FROM `gossip_menu_option` WHERE (`MenuID`, `OptionID`) IN ((3283,7),(3283,8),(3329,4),(3329,5),(3329,6),(3329,7),(3329,8),(3354,6),(3354,7),(3354,8),(3564,5),(3564,6),(3564,7),(3564,8),(8137,7),(8137,8));

-- 3. Remove the simple "wrong class" dialog (options, menus, texts).
DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN 90201 AND 90208;
DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN 90201 AND 90208;
DELETE FROM `npc_text` WHERE `ID` BETWEEN 90301 AND 90308;

-- 4. Remove the points of interest.
DELETE FROM `points_of_interest` WHERE `ID` BETWEEN 1010 AND 1042;

-- 5. Remove the creature spawns.
DELETE FROM `creature` WHERE `guid` BETWEEN 5301000 AND 5301032;

-- 6. Remove trainer links, models and templates.
DELETE FROM `creature_default_trainer` WHERE `CreatureId` BETWEEN 9000001 AND 9000033;
DELETE FROM `creature_template_model` WHERE `CreatureID` BETWEEN 9000001 AND 9000033;
DELETE FROM `creature_template` WHERE `entry` BETWEEN 9000001 AND 9000033;

-- 7. Remove the trainer spell lists and trainer definitions.
DELETE FROM `trainer_spell` WHERE `TrainerId` BETWEEN 900001 AND 900008;
DELETE FROM `trainer` WHERE `Id` BETWEEN 900001 AND 900008;
