-- ============================================================================
-- Undo mod-individual-progression `class_trainers.sql` leftovers + the
-- mount-quest / mail / riding wiring from `mounts_and_riding.sql`.
-- Restores WotLK-authentic class-trainer and mount behavior.
--
-- NOTE: Druid Flight Form (33950) is intentionally left at level 68.
-- ============================================================================

-- ---------------------------------------------------------------------------
-- 1) Restore Warlock summon spells to class trainers (base WotLK values)
-- ---------------------------------------------------------------------------
DELETE FROM `trainer_spell` WHERE `TrainerId` IN (31, 32) AND `SpellID` IN (688, 1710, 23161);
INSERT IGNORE INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(31, 688, 100, 0, 0, 0, 0, 0, 1, 0),      -- Summon Imp
(31, 1710, 10000, 0, 0, 0, 0, 0, 20, 0),   -- Summon Felsteed
(31, 23161, 100000, 0, 0, 5784, 33391, 0, 40, 0), -- Summon Dreadsteed
(32, 688, 100, 0, 0, 0, 0, 0, 1, 0);       -- Summon Imp (BE)

-- ---------------------------------------------------------------------------
-- 2) Restore Paladin trainer spells (base WotLK values)
-- ---------------------------------------------------------------------------
DELETE FROM `trainer_spell` WHERE `TrainerId` IN (3, 4, 5) AND `SpellID` IN (5502, 13820, 23214, 23215, 34767, 53736);
INSERT IGNORE INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(3, 5502, 4000, 0, 0, 0, 0, 0, 20, 0),      -- Sense Undead
(3, 13820, 3500, 0, 0, 0, 0, 0, 20, 0),     -- Summon Warhorse
(3, 23214, 3500, 0, 0, 13819, 33391, 0, 40, 0), -- Summon Charger
(4, 5502, 4000, 0, 0, 0, 0, 0, 20, 0),      -- Sense Undead (BE)
(4, 34767, 3500, 0, 0, 33391, 34769, 0, 40, 0), -- Summon Charger (BE)
(5, 5502, 4000, 0, 0, 0, 0, 0, 20, 0);      -- Sense Undead (Zandalar)

-- Seal of Corruption (53736): restore to trainer 4 at level 66 (base value)
INSERT IGNORE INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(4, 53736, 100000, 0, 0, 0, 0, 0, 66, 0);
UPDATE `trainer_spell` SET `ReqLevel` = 66 WHERE `TrainerId` = 4 AND `SpellID` = 53736;

-- ---------------------------------------------------------------------------
-- 3) Restore Druid Aquatic Form (1066) to trainer 33 @ 16
--    (Flight Form 33950 intentionally left at 68)
-- ---------------------------------------------------------------------------
DELETE FROM `trainer_spell` WHERE `TrainerId` = 33 AND `SpellID` = 1066;
INSERT IGNORE INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(33, 1066, 900, 0, 0, 0, 0, 0, 16, 0);

-- ---------------------------------------------------------------------------
-- 4) Remove module's Lucifron "Tome of Tranquilizing Shot" loot + restore item
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `Entry` = 12118 AND `Item` = 16665 AND `Reference` = 0;
UPDATE `item_template` SET `description` = '' WHERE `entry` = 16665;

-- ---------------------------------------------------------------------------
-- 5) Remove module's Grimoire of Shadow Ward IV (22891) loot rows (base: none)
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `Item` = 22891;

-- ---------------------------------------------------------------------------
-- 6) Warlock/Paladin mount quests -> re-disable + remove module wiring
-- ---------------------------------------------------------------------------
-- Re-add deprecated warlock Felsteed quests to disables (base state)
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (3631, 4487, 4488, 4489, 4490);
INSERT IGNORE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(1, 3631, 0, '', '', 'Deprecated quest: Summon Felsteed'),
(1, 4487, 0, '', '', 'Deprecated quest: Summon Felsteed'),
(1, 4488, 0, '', '', 'Deprecated quest: Summon Felsteed'),
(1, 4489, 0, '', '', 'Deprecated quest: Summon Felsteed'),
(1, 4490, 0, '', '', 'Deprecated quest: Summon Felsteed');

-- Remove the module's quest starter/ender wiring for mount quests
DELETE FROM `creature_queststarter` WHERE `quest` IN (1661, 4485, 4486, 9712, 3631, 4487, 4488, 4489, 4490);
DELETE FROM `creature_questender` WHERE `quest` IN (1661, 4485, 4486, 9712, 3631, 4487, 4488, 4489, 4490);

-- ---------------------------------------------------------------------------
-- 7) Restore Dreadsteed quest item counts (base: 2 Elixirs / 3 Scales / 1 Arcanite)
-- ---------------------------------------------------------------------------
UPDATE `quest_template` SET `RequiredItemCount1` = 2, `LogDescription` = 'Bring 2 Elixirs of Shadow Power to Gorzeeki Wildeyes in the Burning Steppes.' WHERE `ID` = 7626;
UPDATE `quest_template` SET `RequiredItemCount1` = 3, `LogDescription` = 'Bring 3 Black Dragonscales to Gorzeeki Wildeyes in the Burning Steppes.' WHERE `ID` = 7628;
UPDATE `quest_template` SET `RequiredItemCount1` = 1, `LogDescription` = 'Bring 1 Arcanite Bar to Gorzeeki in the Burning Steppes.' WHERE `ID` = 7630;

-- ---------------------------------------------------------------------------
-- 8) Restore mail_level_reward to base (levels 20/40/60/70)
-- ---------------------------------------------------------------------------
DELETE FROM `mail_level_reward`;
INSERT IGNORE INTO `mail_level_reward` (`Level`, `RaceMask`, `MailTemplateId`, `SenderEntry`) VALUES
(20, 1, 224, 4732),   (20, 2, 231, 4752),   (20, 4, 226, 4772),   (20, 8, 225, 4753),
(20, 16, 233, 4773),  (20, 32, 229, 3690),  (20, 64, 228, 7954),  (20, 128, 230, 7953),
(20, 512, 232, 16280),(20, 1024, 227, 20914),
(40, 1, 276, 4732),   (40, 2, 278, 4752),   (40, 4, 274, 4772),   (40, 8, 277, 4753),
(40, 16, 281, 4773),  (40, 32, 279, 3690),  (40, 64, 275, 7954),  (40, 128, 280, 7953),
(40, 512, 272, 16280),(40, 1024, 273, 20914),
(60, 690, 282, 35093),(60, 1101, 283, 35100),
(70, 690, 285, 35135),(70, 1101, 284, 35133);

-- ---------------------------------------------------------------------------
-- 9) Restore riding-trainer creature_default_trainer to base values
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(3690, 42),  -- Kar Stormsinger
(4752, 38),  -- Kildar
(4773, 41),  -- Velma Warnam
(7953, 44);  -- Xar'Ti
