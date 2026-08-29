-- Dragonmaw Scout (2103) near Dun Algaz: the ranged slot item 5262
-- ('Monster - Bow, Dark Brown') never renders in-game - the same class of broken
-- "Monster -" display model as the bristleback fix. Swap to a real bow (2507
-- 'Laminated Recurve Bow') which renders and animates. The main-hand sword (2147)
-- is left untouched.

UPDATE `creature_equip_template`
SET `ItemID3` = 2507
WHERE `CreatureID` = 2103 AND `ID` = 1;
