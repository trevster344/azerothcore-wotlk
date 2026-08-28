-- 60% racial mounts (Elekk, Hawkstrider): WotLK level 20 / 1g  (module: 30 / 10g)
UPDATE `item_template` SET `RequiredLevel` = 20, `BuyPrice` = 10000 WHERE `entry` IN
(28481, 28927, 29220, 29221, 29222, 29743, 29744);

-- 100% racial mounts: WotLK level 40 / 10g  (module: 60 / 100g)
UPDATE `item_template` SET `RequiredLevel` = 40, `BuyPrice` = 100000 WHERE `entry` IN
(28936, 29223, 29224, 29745, 29746, 29747);

-- Swift White Hawkstrider (rare drop): WotLK level 40 (keeps base 100g price)
UPDATE `item_template` SET `RequiredLevel` = 40 WHERE `entry` = 35513;

-- Talbuk (TBC rep) mounts: WotLK level 40  (module: 60)
UPDATE `item_template` SET `RequiredLevel` = 40 WHERE `entry` IN
(28915, 29102, 29103, 29104, 29105, 29227, 29228, 29229, 29230, 29231);

-- Black War (PvP) mounts: WotLK level 40  (module: 60)
UPDATE `item_template` SET `RequiredLevel` = 40 WHERE `entry` IN
(29465, 29466, 29467, 29468, 29469, 29470, 29471, 29472);
