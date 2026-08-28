-- Rogue poisons: restore Poisons-skill reward on Klaven's Tower (Alliance, lvl 20)
UPDATE `quest_template` SET `RewardSpell` = 2995 WHERE `ID` = 2359;

-- Revert the spells the module gated to 61/71 back to WotLK trainer levels
UPDATE `trainer_spell` SET `ReqLevel` = 48 WHERE `SpellID` = 21562;                    -- Priest PoF R1
UPDATE `trainer_spell` SET `ReqLevel` = 56 WHERE `SpellID` IN (23028, 27683);          -- Mage Arcane Brilliance, Priest PoSP R1
UPDATE `trainer_spell` SET `ReqLevel` = 50 WHERE `SpellID` = 21849;                    -- Druid Gift of the Wild R1
UPDATE `trainer_spell` SET `ReqLevel` = 60 WHERE `SpellID` IN
(25286, 25288, 25289, 25290, 25291, 25292, 19801, 25294, 25295, 25296, 25300, 25302, 31016,
 21564, 25314, 25315, 25316, 25357, 25361, 29228, 10140, 25304, 25345, 28609, 28612,
 25309, 25311, 28610, 21850, 25297, 25298, 25299, 31018, 31709);                       -- rank-gated spells
UPDATE `trainer_spell` SET `ReqLevel` = 70 WHERE `SpellID` IN
(25392, 39374, 27090, 27127, 33717, 26991);                                            -- WotLK-rank cap spells
