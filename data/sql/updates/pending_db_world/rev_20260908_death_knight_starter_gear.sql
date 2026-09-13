-- Death Knights start with an empty inventory because the retail CharStartOutfit.dbc
-- has no class-6 (death knight) rows and no content in this DB grants their starter
-- gear. In authentic WotLK a fresh DK is created wearing the level-55 "Acherus Knight's"
-- green set plus the Massacre Sword, regardless of race/gender. Reproduce that by handing
-- the set out via playercreateinfo_item (race = 0 covers every DK race/gender; items are
-- auto-equipped through StoreNewItemInBestSlots at character creation).

DELETE FROM `playercreateinfo_item` WHERE `race` = 0 AND `class` = 6 AND `itemid` IN (34648, 34649, 34650, 34651, 34652, 34653, 34655, 34656, 34657, 34658, 34659, 34661);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`, `Note`) VALUES
(0, 6, 34648, 1, 'DK starter - Acherus Knight''s Greaves'),
(0, 6, 34649, 1, 'DK starter - Acherus Knight''s Gauntlets'),
(0, 6, 34650, 1, 'DK starter - Acherus Knight''s Tunic'),
(0, 6, 34651, 1, 'DK starter - Acherus Knight''s Girdle'),
(0, 6, 34652, 1, 'DK starter - Acherus Knight''s Hood'),
(0, 6, 34653, 1, 'DK starter - Acherus Knight''s Wristguard'),
(0, 6, 34655, 1, 'DK starter - Acherus Knight''s Pauldrons'),
(0, 6, 34656, 1, 'DK starter - Acherus Knight''s Legplates'),
(0, 6, 34657, 1, 'DK starter - Choker of Damnation'),
(0, 6, 34658, 1, 'DK starter - Plague Band'),
(0, 6, 34659, 1, 'DK starter - Acherus Knight''s Shroud'),
(0, 6, 34661, 1, 'DK starter - Massacre Sword');
