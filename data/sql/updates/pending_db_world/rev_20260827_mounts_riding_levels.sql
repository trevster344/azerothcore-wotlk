-- Apprentice Riding available at level 20 for 4g (all classes, incl. custom trainers).
UPDATE `trainer_spell` SET `ReqLevel` = 20, `MoneyCost` = 40000 WHERE `SpellID` = 33388;

-- 60% vendor mounts usable at level 20 for 1g.
UPDATE `item_template` SET `RequiredLevel` = 20, `BuyPrice` = 10000 WHERE `entry` IN
(1132, 2411, 2414, 5655, 5656, 5665, 5668, 5864, 5872, 5873, 8563, 8595, 8588, 8591, 8592,
 8629, 8631, 8632, 13321, 13322, 13323, 13324, 13331, 13332, 13333, 15277, 15290, 47100);

-- Druid Travel Form (783) & Shaman Ghost Wolf (2645) available at level 16.
UPDATE `trainer_spell` SET `ReqLevel` = 16 WHERE `SpellID` IN (783, 2645);
