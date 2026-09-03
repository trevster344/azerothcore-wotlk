-- Warlock class quest 'Tome of the Cabal': Strahad Farsan (6251, Ratchet) offers
-- both faction variants of the starter quest at once - 1758 (go see Krom
-- Stoutarm, Ironforge) and 1801 (go see Jorah Annison, Undercity) - so a single
-- warlock can take and complete both branches. Restore the faction gate and make
-- the two starters mutually exclusive so only the branch matching the character's
-- race is ever available. AllowableRaces: 1101 = Alliance, 690 = Horde.

UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 1758;
UPDATE `quest_template` SET `AllowableRaces` = 690 WHERE `ID` = 1801;
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 1801 WHERE `ID` IN (1758, 1801);
