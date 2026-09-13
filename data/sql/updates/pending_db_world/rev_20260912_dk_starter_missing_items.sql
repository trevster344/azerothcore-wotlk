-- Death Knights are missing several authentic starting items. The class-6 rows
-- in the CharStartOutfit.dbc used by this server omit the Hearthstone (6948),
-- and rev_20260908_death_knight_starter_gear.sql hands out the Acherus set via
-- playercreateinfo_item but no containers or consumables. Grant the missing
-- items to every Death Knight (race 0 = all DK races/genders); the core hands
-- these out after the starting outfit in Player::Create.
DELETE FROM `playercreateinfo_item` WHERE `race` = 0 AND `class` = 6 AND `itemid` IN (38145, 38147, 41751, 6948);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`, `Note`) VALUES
(0, 6, 38145, 4, 'DK starter - Deathweave Bag'),
(0, 6, 38147, 1, 'DK starter - Corrupted Band'),
(0, 6, 41751, 10, 'DK starter - Black Mushroom'),
(0, 6, 6948, 1, 'Hearthstone');
