-- Link the level-16 Alliance rogue class quest terminals to the shared
-- continuation "Redridge Rendezvous" (2281), matching the human branch
-- (2300 -> 2281). Without these links "Kingly Shakedown" (2298) and
-- "Erion's Behest" (2260) dead-end at Renzik "The Shiv" with no reward
-- and no visible next quest.
UPDATE `quest_template` SET `RewardNextQuest` = 2281 WHERE `ID` IN (2298, 2260);
