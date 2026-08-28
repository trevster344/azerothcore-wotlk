-- Hunter Aspect of the Cheetah -> 16 (WotLK baseline; module had 20)
UPDATE `trainer_spell` SET `ReqLevel` = 16 WHERE `SpellID` = 5118;

-- Epic mount quests -> level 40 (warlock Dreadsteed chain incl. prereq, blood elf paladin charger)
UPDATE `quest_template` SET `MinLevel` = 40
WHERE `ID` IN (7564, 7621, 7622, 7623, 7624, 7625, 7626, 7627, 7628, 7629, 7630, 7631, 9735, 9736, 9737);

-- Human paladin Summon Charger restored to trainers @40 (requires Warhorse + Journeyman)
DELETE FROM `trainer_spell` WHERE `TrainerId` IN (3, 900001) AND `SpellId` = 23214;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(3, 23214, 3500, 0, 0, 13819, 33391, 0, 40, 0),
(900001, 23214, 3500, 0, 0, 13819, 33391, 0, 40, 0);

-- True WotLK riding tiers
UPDATE `trainer_spell` SET `ReqLevel` = 40, `MoneyCost` = 500000  WHERE `SpellID` = 33391; -- Journeyman  (module: 60/1000g)
UPDATE `trainer_spell` SET `ReqLevel` = 60, `MoneyCost` = 2500000 WHERE `SpellID` = 34090; -- Expert     (module: 70/800g)

-- True WotLK mount levels/prices
UPDATE `item_template` SET `RequiredLevel` = 40, `BuyPrice` = 100000 WHERE `entry` IN
(12302, 12303, 18766, 18767, 18768, 18902, 13326, 13327, 18772, 18773, 18774, 12353, 12354, 18776, 18777, 18778,
 13328, 13329, 18785, 18786, 18787, 8586, 13317, 18788, 18789, 18790, 13334, 18791, 15292, 15293, 18793, 18794, 18795,
 12330, 12351, 18796, 18797, 18798);  -- 100% ground mounts (module: 60/100g)
UPDATE `item_template` SET `RequiredLevel` = 60, `BuyPrice` = 500000 WHERE `entry` IN
(25470, 25471, 25472, 25474, 25475, 25476);  -- 150% flying (module: 70/100g)
UPDATE `item_template` SET `RequiredLevel` = 70, `BuyPrice` = 1000000 WHERE `entry` IN
(25473, 25527, 25528, 25529, 25477, 25531, 25532, 25533);  -- 280% flying (module: 70/200g)
