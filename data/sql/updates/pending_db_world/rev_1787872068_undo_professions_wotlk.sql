-- ============================================================================
-- Undo mod-individual-progression `professions.sql` — restore WotLK-authentic
-- trainer-taught profession state. Applied directly to `acore_world`.
--
-- Reverses the module's "force recipes from books/quests instead of trainers"
-- changes back to the stock AzerothCore WotLK baseline.
-- ============================================================================

-- ---------------------------------------------------------------------------
-- 1) Re-add deleted recipe / skill `trainer_spell` rows (base WotLK values).
--    These were removed globally by the module so recipes had to come from
--    books/drops; restoring them makes trainers teach the recipes again.
-- ---------------------------------------------------------------------------

-- trainer 58
INSERT IGNORE INTO `trainer_spell` VALUES
(58,16642,10000,164,250,0,0,0,0,0),
(58,16643,10000,164,250,0,0,0,0,0),
(58,16644,10000,164,255,0,0,0,0,0),
(58,16652,10000,164,280,0,0,0,0,0),
(58,16653,10000,164,280,0,0,0,0,0),
(58,16662,12000,164,300,0,0,0,0,0),
(58,16969,15000,164,275,0,0,0,0,0),
(58,16971,15000,164,280,0,0,0,0,0);

-- trainer 59
INSERT IGNORE INTO `trainer_spell` VALUES
(59,16642,10000,164,250,0,0,0,0,0),
(59,16643,10000,164,250,0,0,0,0,0),
(59,16644,10000,164,255,0,0,0,0,0),
(59,16652,10000,164,280,0,0,0,0,0),
(59,16653,10000,164,280,0,0,0,0,0),
(59,16662,12000,164,300,0,0,0,0,0),
(59,16969,15000,164,275,0,0,0,0,0),
(59,16971,15000,164,280,0,0,0,0,0);

-- trainer 60
INSERT IGNORE INTO `trainer_spell` VALUES
(60,16642,10000,164,250,0,0,0,0,0),
(60,16643,10000,164,250,0,0,0,0,0),
(60,16644,10000,164,255,0,0,0,0,0),
(60,16652,10000,164,280,0,0,0,0,0),
(60,16653,10000,164,280,0,0,0,0,0),
(60,16662,12000,164,300,0,0,0,0,0),
(60,16969,15000,164,275,0,0,0,0,0),
(60,16971,15000,164,280,0,0,0,0,0);

-- trainer 61
INSERT IGNORE INTO `trainer_spell` VALUES
(61,19052,10000,165,265,0,0,0,0,0),
(61,19055,10000,165,270,0,0,0,0,0),
(61,19065,10000,165,275,0,0,0,0,0),
(61,19071,10000,165,280,0,0,0,0,0),
(61,19072,10000,165,280,0,0,0,0,0),
(61,19082,15000,165,290,0,0,0,0,0),
(61,19083,15000,165,290,0,0,0,0,0),
(61,19091,15000,165,300,0,0,0,0,0),
(61,19092,15000,165,300,0,0,0,0,0),
(61,19098,15000,165,300,0,0,0,0,0),
(61,19102,15000,165,300,0,0,0,0,0),
(61,19103,15000,165,300,0,0,0,0,0);

-- trainer 62
INSERT IGNORE INTO `trainer_spell` VALUES
(62,19052,10000,165,265,0,0,0,0,0),
(62,19055,10000,165,270,0,0,0,0,0),
(62,19065,10000,165,275,0,0,0,0,0),
(62,19071,10000,165,280,0,0,0,0,0),
(62,19072,10000,165,280,0,0,0,0,0),
(62,19082,15000,165,290,0,0,0,0,0),
(62,19083,15000,165,290,0,0,0,0,0),
(62,19091,15000,165,300,0,0,0,0,0),
(62,19092,15000,165,300,0,0,0,0,0),
(62,19098,15000,165,300,0,0,0,0,0),
(62,19102,15000,165,300,0,0,0,0,0),
(62,19103,15000,165,300,0,0,0,0,0),
(62,32455,20000,165,325,0,0,0,0,0);

-- trainer 63
INSERT IGNORE INTO `trainer_spell` VALUES
(63,19052,10000,165,265,0,0,0,0,0),
(63,19055,10000,165,270,0,0,0,0,0),
(63,19065,10000,165,275,0,0,0,0,0),
(63,19071,10000,165,280,0,0,0,0,0),
(63,19072,10000,165,280,0,0,0,0,0),
(63,19082,15000,165,290,0,0,0,0,0),
(63,19083,15000,165,290,0,0,0,0,0),
(63,19091,15000,165,300,0,0,0,0,0),
(63,19092,15000,165,300,0,0,0,0,0),
(63,19098,15000,165,300,0,0,0,0,0),
(63,19102,15000,165,300,0,0,0,0,0),
(63,19103,15000,165,300,0,0,0,0,0),
(63,32455,20000,165,325,0,0,0,0,0);

-- trainer 65
INSERT IGNORE INTO `trainer_spell` VALUES
(65,17552,15000,171,255,0,0,0,0,0),
(65,17553,15000,171,260,0,0,0,0,0),
(65,17555,15000,171,270,0,0,0,0,0),
(65,17556,20000,171,275,0,0,0,0,0),
(65,17557,20000,171,275,0,0,0,0,0),
(65,17572,20000,171,285,0,0,0,0,0),
(65,17573,20000,171,285,0,0,0,0,0);

-- trainer 66
INSERT IGNORE INTO `trainer_spell` VALUES
(66,17552,15000,171,255,0,0,0,0,0),
(66,17553,15000,171,260,0,0,0,0,0),
(66,17555,15000,171,270,0,0,0,0,0),
(66,17556,20000,171,275,0,0,0,0,0),
(66,17557,20000,171,275,0,0,0,0,0),
(66,17572,20000,171,285,0,0,0,0,0),
(66,17573,20000,171,285,0,0,0,0,0);

-- trainer 67
INSERT IGNORE INTO `trainer_spell` VALUES
(67,17552,15000,171,255,0,0,0,0,0),
(67,17553,15000,171,260,0,0,0,0,0),
(67,17555,15000,171,270,0,0,0,0,0),
(67,17556,20000,171,275,0,0,0,0,0),
(67,17557,20000,171,275,0,0,0,0,0),
(67,17572,20000,171,285,0,0,0,0,0),
(67,17573,20000,171,285,0,0,0,0,0);

-- trainer 72
INSERT IGNORE INTO `trainer_spell` VALUES
(72,18403,10000,197,255,0,0,0,0,0),
(72,18406,10000,197,260,0,0,0,0,0),
(72,18407,10000,197,260,0,0,0,0,0),
(72,18409,10000,197,265,0,0,0,0,0),
(72,18410,10000,197,265,0,0,0,0,0),
(72,18411,10000,197,265,0,0,0,0,0),
(72,18413,10000,197,270,0,0,0,0,0),
(72,18414,10000,197,270,0,0,0,0,0),
(72,18415,10000,197,270,0,0,0,0,0),
(72,18416,12500,197,275,0,0,0,0,0),
(72,18417,12500,197,275,0,0,0,0,0),
(72,18420,12500,197,275,0,0,0,0,0),
(72,18421,12500,197,275,0,0,0,0,0),
(72,18423,15000,197,280,0,0,0,0,0),
(72,18424,15000,197,280,0,0,0,0,0),
(72,18437,15000,197,285,0,0,0,0,0),
(72,18438,15000,197,285,0,0,0,0,0),
(72,18441,15000,197,290,0,0,0,0,0),
(72,18442,15000,197,290,0,0,0,0,0),
(72,18444,15000,197,295,0,0,0,0,0),
(72,18446,15000,197,300,0,0,0,0,0),
(72,18449,15000,197,300,0,0,0,0,0),
(72,18450,15000,197,300,0,0,0,0,0),
(72,18451,15000,197,300,0,0,0,0,0),
(72,18453,15000,197,300,0,0,0,0,0);

-- trainer 73
INSERT IGNORE INTO `trainer_spell` VALUES
(73,18403,10000,197,255,0,0,0,0,0),
(73,18406,10000,197,260,0,0,0,0,0),
(73,18407,10000,197,260,0,0,0,0,0),
(73,18409,10000,197,265,0,0,0,0,0),
(73,18410,10000,197,265,0,0,0,0,0),
(73,18411,10000,197,265,0,0,0,0,0),
(73,18413,10000,197,270,0,0,0,0,0),
(73,18414,10000,197,270,0,0,0,0,0),
(73,18415,10000,197,270,0,0,0,0,0),
(73,18416,12500,197,275,0,0,0,0,0),
(73,18417,12500,197,275,0,0,0,0,0),
(73,18420,12500,197,275,0,0,0,0,0),
(73,18421,12500,197,275,0,0,0,0,0),
(73,18423,15000,197,280,0,0,0,0,0),
(73,18424,15000,197,280,0,0,0,0,0),
(73,18437,15000,197,285,0,0,0,0,0),
(73,18438,15000,197,285,0,0,0,0,0),
(73,18441,15000,197,290,0,0,0,0,0),
(73,18442,15000,197,290,0,0,0,0,0),
(73,18444,15000,197,295,0,0,0,0,0),
(73,18446,15000,197,300,0,0,0,0,0),
(73,18449,15000,197,300,0,0,0,0,0),
(73,18450,15000,197,300,0,0,0,0,0),
(73,18451,15000,197,300,0,0,0,0,0),
(73,18453,15000,197,300,0,0,0,0,0);

-- trainer 74
INSERT IGNORE INTO `trainer_spell` VALUES
(74,18403,10000,197,255,0,0,0,0,0),
(74,18406,10000,197,260,0,0,0,0,0),
(74,18407,10000,197,260,0,0,0,0,0),
(74,18409,10000,197,265,0,0,0,0,0),
(74,18410,10000,197,265,0,0,0,0,0),
(74,18411,10000,197,265,0,0,0,0,0),
(74,18413,10000,197,270,0,0,0,0,0),
(74,18414,10000,197,270,0,0,0,0,0),
(74,18415,10000,197,270,0,0,0,0,0),
(74,18416,12500,197,275,0,0,0,0,0),
(74,18417,12500,197,275,0,0,0,0,0),
(74,18420,12500,197,275,0,0,0,0,0),
(74,18421,12500,197,275,0,0,0,0,0),
(74,18423,15000,197,280,0,0,0,0,0),
(74,18424,15000,197,280,0,0,0,0,0),
(74,18437,15000,197,285,0,0,0,0,0),
(74,18438,15000,197,285,0,0,0,0,0),
(74,18441,15000,197,290,0,0,0,0,0),
(74,18442,15000,197,290,0,0,0,0,0),
(74,18444,15000,197,295,0,0,0,0,0),
(74,18446,15000,197,300,0,0,0,0,0),
(74,18449,15000,197,300,0,0,0,0,0),
(74,18450,15000,197,300,0,0,0,0,0),
(74,18451,15000,197,300,0,0,0,0,0),
(74,18453,15000,197,300,0,0,0,0,0);

-- trainer 75
INSERT IGNORE INTO `trainer_spell` VALUES
(75,18261,25000,185,200,3413,0,0,0,0),
(75,54256,100000,185,275,18260,0,0,0,0),
(75,54257,1000,185,125,3102,0,0,0,0);

-- trainer 76
INSERT IGNORE INTO `trainer_spell` VALUES
(76,18261,25000,185,200,3413,0,0,0,0),
(76,54256,100000,185,275,18260,0,0,0,0),
(76,54257,1000,185,125,3102,0,0,0,0);

-- trainer 77
INSERT IGNORE INTO `trainer_spell` VALUES
(77,18261,25000,185,200,3413,0,0,0,0),
(77,54257,1000,185,125,3102,0,0,0,0);

-- trainer 81
INSERT IGNORE INTO `trainer_spell` VALUES
(81,7929,5000,129,180,0,0,0,0,0),
(81,10840,10000,129,210,0,0,0,0,0),
(81,10847,25000,129,200,7924,0,0,35,0),
(81,27032,20000,129,300,0,0,0,0,0),
(81,27033,20000,129,330,0,0,0,0,0),
(81,54254,1000,129,125,3274,0,0,0,0),
(81,54255,20000,129,275,10846,0,0,0,0);

-- trainer 82
INSERT IGNORE INTO `trainer_spell` VALUES
(82,7929,5000,129,180,0,0,0,0,0),
(82,10840,10000,129,210,0,0,0,0,0),
(82,10847,25000,129,200,7924,0,0,35,0),
(82,27032,20000,129,300,0,0,0,0,0),
(82,27033,20000,129,330,0,0,0,0,0),
(82,54254,1000,129,125,3274,0,0,0,0),
(82,54255,20000,129,275,10846,0,0,0,0);

-- trainer 83
INSERT IGNORE INTO `trainer_spell` VALUES
(83,7929,5000,129,180,0,0,0,0,0),
(83,10840,10000,129,210,0,0,0,0,0),
(83,10847,25000,129,200,7924,0,0,35,0),
(83,54254,1000,129,125,3274,0,0,0,0);

-- trainer 84
INSERT IGNORE INTO `trainer_spell` VALUES
(84,12615,2500,202,225,0,0,0,0,0),
(84,19790,10000,202,260,0,0,0,0,0),
(84,19791,5000,202,260,0,0,0,0,0),
(84,19792,10000,202,260,0,0,0,0,0),
(84,19794,20000,202,270,0,0,0,0,0),
(84,19795,10000,202,275,0,0,0,0,0),
(84,19800,10000,202,285,0,0,0,0,0),
(84,19825,20000,202,290,0,0,0,0,0),
(84,23071,5000,202,260,0,0,0,0,0);

-- trainer 85
INSERT IGNORE INTO `trainer_spell` VALUES
(85,12615,2500,202,225,0,0,0,0,0),
(85,19790,10000,202,260,0,0,0,0,0),
(85,19791,5000,202,260,0,0,0,0,0),
(85,19792,10000,202,260,0,0,0,0,0),
(85,19794,20000,202,270,0,0,0,0,0),
(85,19795,10000,202,275,0,0,0,0,0),
(85,19800,10000,202,285,0,0,0,0,0),
(85,19825,20000,202,290,0,0,0,0,0),
(85,23071,5000,202,260,0,0,0,0,0);

-- trainer 86
INSERT IGNORE INTO `trainer_spell` VALUES
(86,12615,2500,202,225,0,0,0,0,0),
(86,19790,10000,202,260,0,0,0,0,0),
(86,19791,5000,202,260,0,0,0,0,0),
(86,19792,10000,202,260,0,0,0,0,0),
(86,19794,20000,202,270,0,0,0,0,0),
(86,19795,10000,202,275,0,0,0,0,0),
(86,19800,10000,202,285,0,0,0,0,0),
(86,19825,20000,202,290,0,0,0,0,0),
(86,23071,5000,202,260,0,0,0,0,0);

-- trainer 87
INSERT IGNORE INTO `trainer_spell` VALUES
(87,12615,2500,202,225,0,0,0,0,0),
(87,19790,10000,202,260,0,0,0,0,0),
(87,19791,5000,202,260,0,0,0,0,0),
(87,19792,10000,202,260,0,0,0,0,0),
(87,19794,20000,202,270,0,0,0,0,0),
(87,19795,10000,202,275,0,0,0,0,0),
(87,19800,10000,202,285,0,0,0,0,0),
(87,19825,20000,202,290,0,0,0,0,0),
(87,23071,5000,202,260,0,0,0,0,0);

-- trainer 88
INSERT IGNORE INTO `trainer_spell` VALUES
(88,12615,2500,202,225,0,0,0,0,0),
(88,19790,10000,202,260,0,0,0,0,0),
(88,19791,5000,202,260,0,0,0,0,0),
(88,19792,10000,202,260,0,0,0,0,0),
(88,19794,20000,202,270,0,0,0,0,0),
(88,19795,10000,202,275,0,0,0,0,0),
(88,19800,10000,202,285,0,0,0,0,0),
(88,19825,20000,202,290,0,0,0,0,0),
(88,23071,5000,202,260,0,0,0,0,0);

-- trainer 89
INSERT IGNORE INTO `trainer_spell` VALUES
(89,12615,2500,202,225,0,0,0,0,0),
(89,19790,10000,202,260,0,0,0,0,0),
(89,19791,5000,202,260,0,0,0,0,0),
(89,19792,10000,202,260,0,0,0,0,0),
(89,19794,20000,202,270,0,0,0,0,0),
(89,19795,10000,202,275,0,0,0,0,0),
(89,19800,10000,202,285,0,0,0,0,0),
(89,19825,20000,202,290,0,0,0,0,0),
(89,23071,5000,202,260,0,0,0,0,0);

-- trainer 90
INSERT IGNORE INTO `trainer_spell` VALUES
(90,12615,2500,202,225,0,0,0,0,0),
(90,19790,10000,202,260,0,0,0,0,0),
(90,19791,5000,202,260,0,0,0,0,0),
(90,19792,10000,202,260,0,0,0,0,0),
(90,19794,20000,202,270,0,0,0,0,0),
(90,19795,10000,202,275,0,0,0,0,0),
(90,19800,10000,202,285,0,0,0,0,0),
(90,19825,20000,202,290,0,0,0,0,0),
(90,23071,5000,202,260,0,0,0,0,0);

-- trainer 91
INSERT IGNORE INTO `trainer_spell` VALUES
(91,12615,2500,202,225,0,0,0,0,0),
(91,19790,10000,202,260,0,0,0,0,0),
(91,19791,5000,202,260,0,0,0,0,0),
(91,19792,10000,202,260,0,0,0,0,0),
(91,19794,20000,202,270,0,0,0,0,0),
(91,19795,10000,202,275,0,0,0,0,0),
(91,19800,10000,202,285,0,0,0,0,0),
(91,19825,20000,202,290,0,0,0,0,0),
(91,23071,5000,202,260,0,0,0,0,0);

-- trainer 92
INSERT IGNORE INTO `trainer_spell` VALUES
(92,12615,2500,202,225,0,0,0,0,0),
(92,19790,10000,202,260,0,0,0,0,0),
(92,19791,5000,202,260,0,0,0,0,0),
(92,19792,10000,202,260,0,0,0,0,0),
(92,19794,20000,202,270,0,0,0,0,0),
(92,19795,10000,202,275,0,0,0,0,0),
(92,19800,10000,202,285,0,0,0,0,0),
(92,19825,20000,202,290,0,0,0,0,0),
(92,23071,5000,202,260,0,0,0,0,0);

-- trainer 94
INSERT IGNORE INTO `trainer_spell` VALUES
(94,20008,10000,333,255,0,0,0,0,0),
(94,20012,10000,333,270,0,0,0,0,0),
(94,20013,20000,333,295,0,0,0,0,0),
(94,20014,10000,333,265,0,0,0,0,0),
(94,20016,15000,333,280,0,0,0,0,0),
(94,20023,20000,333,295,0,0,0,0,0),
(94,20028,15000,333,290,0,0,0,0,0),
(94,32667,50000,333,375,0,0,0,35,0);

-- trainer 95
INSERT IGNORE INTO `trainer_spell` VALUES
(95,20008,10000,333,255,0,0,0,0,0),
(95,20012,10000,333,270,0,0,0,0,0),
(95,20013,20000,333,295,0,0,0,0,0),
(95,20014,10000,333,265,0,0,0,0,0),
(95,20016,15000,333,280,0,0,0,0,0),
(95,20023,20000,333,295,0,0,0,0,0),
(95,20028,15000,333,290,0,0,0,0,0);

-- trainer 96
INSERT IGNORE INTO `trainer_spell` VALUES
(96,20008,10000,333,255,0,0,0,0,0),
(96,20012,10000,333,270,0,0,0,0,0),
(96,20013,20000,333,295,0,0,0,0,0),
(96,20014,10000,333,265,0,0,0,0,0),
(96,20016,15000,333,280,0,0,0,0,0),
(96,20023,20000,333,295,0,0,0,0,0),
(96,20028,15000,333,290,0,0,0,0,0);

-- trainer 97
INSERT IGNORE INTO `trainer_spell` VALUES
(97,18249,25000,356,200,7732,0,0,10,0),
(97,54083,10000,356,125,7731,0,0,10,0),
(97,54084,100000,356,275,18248,0,0,10,0);

-- trainer 98
INSERT IGNORE INTO `trainer_spell` VALUES
(98,18249,25000,356,200,7732,0,0,10,0),
(98,54083,10000,356,125,7731,0,0,10,0);

-- trainer 99
INSERT IGNORE INTO `trainer_spell` VALUES
(99,18249,25000,356,200,7732,0,0,10,0),
(99,54083,10000,356,125,7731,0,0,10,0),
(99,54084,100000,356,275,18248,0,0,10,0);

-- trainer 111
INSERT IGNORE INTO `trainer_spell` VALUES
(111,28903,10000,755,300,0,0,0,0,0),
(111,28905,10000,755,305,0,0,0,0,0),
(111,28910,10000,755,300,0,0,0,0,0),
(111,28914,10000,755,315,0,0,0,0,0),
(111,28916,10000,755,300,0,0,0,0,0),
(111,28917,10000,755,305,0,0,0,0,0),
(111,28925,10000,755,300,0,0,0,0,0),
(111,28950,10000,755,300,0,0,0,0,0),
(111,34590,10000,755,305,0,0,0,0,0);

-- trainer 112
INSERT IGNORE INTO `trainer_spell` VALUES
(112,28903,10000,755,300,0,0,0,0,0),
(112,28905,10000,755,305,0,0,0,0,0),
(112,28910,10000,755,300,0,0,0,0,0),
(112,28914,10000,755,315,0,0,0,0,0),
(112,28916,10000,755,300,0,0,0,0,0),
(112,28917,10000,755,305,0,0,0,0,0),
(112,28925,10000,755,300,0,0,0,0,0),
(112,28950,10000,755,300,0,0,0,0,0),
(112,34590,10000,755,305,0,0,0,0,0);

-- trainer 114
INSERT IGNORE INTO `trainer_spell` VALUES
(114,32667,50000,333,375,0,0,0,35,0);

-- trainer 126
INSERT IGNORE INTO `trainer_spell` VALUES
(126,2795,240,185,25,0,0,0,0,0);


-- ---------------------------------------------------------------------------
-- 2) Brilliant Glass (47280): module forced it to ReqLevel 71; base is 0.
-- ---------------------------------------------------------------------------
UPDATE `trainer_spell` SET `ReqLevel` = 0 WHERE `SpellID` = 47280;

-- ---------------------------------------------------------------------------
-- 3) Restore quest_template rewards (remove book rewards the module forced):
--    - 6622/6624 (Alliance/Horde First Aid books): RewardItem3 = 16085 -> 0
--    - 6610 (Cooking): RewardItem1 = 16073 -> 0
--    - 6607 (Fishing): RewardItem2 = 16082 -> 0
-- ---------------------------------------------------------------------------
UPDATE `quest_template` SET `RewardItem3` = 0, `RewardAmount3` = 0 WHERE `ID` IN (6622, 6624);
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE `ID` = 6610;
UPDATE `quest_template` SET `RewardItem2` = 0, `RewardAmount2` = 0 WHERE `ID` = 6607;

-- ---------------------------------------------------------------------------
-- 4) item_template / item_template_locale restores:
--    - 16073 Artisan Cookbook: spellid_1 19887 -> 0 (module made the book teach;
--      base teaches Cooking via the quest reward spell instead)
--    - 16085 Artisan First Aid: restore empty description
--    - restore 16073 locale rows the module deleted (keep only deDE/frFR)
--    - remove 16085 frFR locale row the module added if different from base
-- ---------------------------------------------------------------------------
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0, `spellcharges_1` = 0, `spellppmRate_1` = 0 WHERE `entry` = 16073;
UPDATE `item_template` SET `description` = '' WHERE `entry` = 16085;

DELETE FROM `item_template_locale` WHERE `ID` = 16073;
INSERT IGNORE INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES
(16073, 'deDE', 'Fachmannkochbuch', '', 0),
(16073, 'esES', 'Libro de cocina de artesano', NULL, 0),
(16073, 'esMX', 'Libro de cocina de artesano', NULL, 0),
(16073, 'frFR', 'Livre de cuisine pour artisan', NULL, 0),
(16073, 'koKR', '전문 요리책', NULL, 0),
(16073, 'ruRU', 'Поваренная книга искусника', NULL, 0),
(16073, 'zhCN', '高级烹饪教材', NULL, 0),
(16073, 'zhTW', '專家級烹飪書', NULL, 0);

DELETE FROM `item_template_locale` WHERE `ID` = 16085 AND `locale` = 'frFR';
INSERT IGNORE INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES
(16085, 'frFR', 'Artisan secouriste - Se soigner seul', 'Vous apprend des techniques avancées en Secourisme et vous permet d\'augmenter votre compétence jusqu\'à un maximum de 300.', 0);

-- ---------------------------------------------------------------------------
-- 5) Restore creature_template npcflag/gossip_menu_id/subname to base values
--    (module raised many apprentice trainers to npcflag=81 + renamed subnames)
-- ---------------------------------------------------------------------------

-- Restore creature_template npcflag/gossip/subname to base (WotLK) values
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4188, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 223;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 2744, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 514;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2745, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 957;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4261, `subname` = 'Tailoring Trainer' WHERE `entry` = 1103;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4110, `subname` = 'Alchemy Trainer' WHERE `entry` = 1215;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 2741, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 1241;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4116, `subname` = 'Apprentice Alchemist' WHERE `entry` = 1246;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4262, `subname` = 'Apprentice Tailor' WHERE `entry` = 1300;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4161, `subname` = 'Enchanting Trainer' WHERE `entry` = 1317;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4353, `subname` = 'Tailoring Trainer' WHERE `entry` = 1346;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2782, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 1383;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4208, `subname` = 'Leatherworking Trainer' WHERE `entry` = 1385;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5853, `subname` = 'Cook' WHERE `entry` = 1430;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4182, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 1466;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4115, `subname` = 'Alchemy Trainer' WHERE `entry` = 1470;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4172, `subname` = 'Leatherworking Trainer' WHERE `entry` = 1632;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5665, `subname` = 'Fishing Trainer' WHERE `entry` = 1651;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4145, `subname` = 'Engineering Trainer' WHERE `entry` = 1676;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4135, `subname` = 'Engineering Trainer' WHERE `entry` = 1702;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4264, `subname` = 'Apprentice Tailor' WHERE `entry` = 1703;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Herbalism Trainer' WHERE `entry` = 2114;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Alchemy Trainer' WHERE `entry` = 2132;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5855, `subname` = 'Physician' WHERE `entry` = 2326;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 657, `subname` = 'First Aid Trainer' WHERE `entry` = 2327;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5855, `subname` = 'Physician' WHERE `entry` = 2329;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4129, `subname` = 'Alchemy Trainer' WHERE `entry` = 2391;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4348, `subname` = 'Tailoring Trainer' WHERE `entry` = 2627;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 2798;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4127, `subname` = 'Alchemy Trainer' WHERE `entry` = 2837;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4265, `subname` = 'Apprentice Tailor' WHERE `entry` = 2855;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4143, `subname` = 'Apprentice Engineer' WHERE `entry` = 2857;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 1017, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 2998;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7690, `subname` = 'Mining Trainer' WHERE `entry` = 3001;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4351, `subname` = 'Tailoring Trainer' WHERE `entry` = 3004;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4242, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3007;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4187, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 3008;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4128, `subname` = 'Alchemy Trainer' WHERE `entry` = 3009;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4165, `subname` = 'Enchanting Trainer' WHERE `entry` = 3011;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7691, `subname` = 'Herbalism Trainer' WHERE `entry` = 3013;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Cooking Trainer' WHERE `entry` = 3026;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Fishing Trainer' WHERE `entry` = 3028;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4185, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3069;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 2781, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 3136;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 2746, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 3174;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Mining Trainer' WHERE `entry` = 3175;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5855, `subname` = 'First Aid Trainer' WHERE `entry` = 3181;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Alchemy Trainer' WHERE `entry` = 3184;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Herbalism Trainer' WHERE `entry` = 3185;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4136, `subname` = 'Engineering Trainer' WHERE `entry` = 3290;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4741, `subname` = 'Fishing Trainer' WHERE `entry` = 3332;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4168, `subname` = 'Enchanting Trainer' WHERE `entry` = 3345;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4126, `subname` = 'Alchemy Trainer' WHERE `entry` = 3347;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 1012, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 3355;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7690, `subname` = 'Mining Trainer' WHERE `entry` = 3357;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4347, `subname` = 'Tailoring Trainer' WHERE `entry` = 3363;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4209, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3365;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4761, `subname` = 'First Aid Trainer' WHERE `entry` = 3373;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4747, `subname` = 'Cooking Trainer' WHERE `entry` = 3399;
UPDATE `creature_template` SET `npcflag` = 3, `gossip_menu_id` = 4148, `subname` = 'Apprentice Engineer' WHERE `entry` = 3412;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 2783, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 3478;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4270, `subname` = 'Tailoring Trainer' WHERE `entry` = 3484;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4140, `subname` = 'Engineering Trainer' WHERE `entry` = 3494;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4267, `subname` = 'Tailoring Trainer' WHERE `entry` = 3523;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4184, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3549;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 2749, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 3557;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4111, `subname` = 'Alchemy Trainer' WHERE `entry` = 3603;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4174, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3605;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4156, `subname` = 'Enchanting Trainer' WHERE `entry` = 3606;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4206, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3703;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4350, `subname` = 'Tailoring Trainer' WHERE `entry` = 3704;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4117, `subname` = 'Alchemy Trainer' WHERE `entry` = 3964;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4211, `subname` = 'Leatherworking Trainer' WHERE `entry` = 3967;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4349, `subname` = 'Tailoring Trainer' WHERE `entry` = 4159;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4131, `subname` = 'Alchemy Trainer' WHERE `entry` = 4160;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4263, `subname` = 'Tailoring Trainer' WHERE `entry` = 4193;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5855, `subname` = 'First Aid Trainer' WHERE `entry` = 4211;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4241, `subname` = 'Leatherworking Trainer' WHERE `entry` = 4212;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4163, `subname` = 'Enchanting Trainer' WHERE `entry` = 4213;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 593, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 4258;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4354, `subname` = 'Tailoring Trainer' WHERE `entry` = 4576;
UPDATE `creature_template` SET `npcflag` = 3, `gossip_menu_id` = 4144, `subname` = 'Apprentice Engineer' WHERE `entry` = 4586;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4210, `subname` = 'Leatherworking Trainer' WHERE `entry` = 4588;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 4591;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 1022, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 4596;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2750, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 4605;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4130, `subname` = 'Apprentice Alchemist' WHERE `entry` = 4609;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4132, `subname` = 'Alchemy Trainer' WHERE `entry` = 4611;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4166, `subname` = 'Enchanting Trainer' WHERE `entry` = 4616;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4122, `subname` = 'Alchemy Trainer' WHERE `entry` = 4900;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4205, `subname` = 'Leatherworking Trainer' WHERE `entry` = 5127;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4762, `subname` = 'First Aid Trainer' WHERE `entry` = 5150;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4345, `subname` = 'Tailoring Trainer' WHERE `entry` = 5153;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4160, `subname` = 'Enchanting Trainer' WHERE `entry` = 5157;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4150, `subname` = 'Engineering Trainer' WHERE `entry` = 5174;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4123, `subname` = 'Alchemy Trainer' WHERE `entry` = 5177;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 21222, `subname` = 'Cooking Trainer' WHERE `entry` = 5482;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 645, `subname` = 'Fishing Trainer' WHERE `entry` = 5493;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4201, `subname` = 'Alchemy Trainer' WHERE `entry` = 5499;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4112, `subname` = 'Apprentice Alchemist' WHERE `entry` = 5500;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 581, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 5511;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 660, `subname` = 'Mining Trainer' WHERE `entry` = 5513;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4146, `subname` = 'Engineering Trainer' WHERE `entry` = 5518;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4203, `subname` = 'Leatherworking Trainer' WHERE `entry` = 5564;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4344, `subname` = 'Apprentice Tailor' WHERE `entry` = 5567;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Fishing Trainer' WHERE `entry` = 5690;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4202, `subname` = 'Enchanting Trainer' WHERE `entry` = 5695;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 5759;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4186, `subname` = 'Leatherworking Trainer' WHERE `entry` = 5784;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4183, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 5811;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Fishing Trainer' WHERE `entry` = 5938;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 5939;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 5943;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 5855, `subname` = 'First Aid Trainer' WHERE `entry` = 6094;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Skinning Trainer' WHERE `entry` = 6289;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Skinning Trainer' WHERE `entry` = 6290;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 2743, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 6299;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Skinning Trainer' WHERE `entry` = 6387;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Skinning Trainer' WHERE `entry` = 7088;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Skinning Trainer' WHERE `entry` = 7089;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4164, `subname` = 'Enchanting Trainer' WHERE `entry` = 7949;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4842, `subname` = 'Leatherworking Trainer' WHERE `entry` = 8153;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Cook' WHERE `entry` = 8306;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2747, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 10266;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2761, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 10276;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2742, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 10277;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 2748, `subname` = 'Apprentice Blacksmith' WHERE `entry` = 10278;
UPDATE `creature_template` SET `npcflag` = 82, `gossip_menu_id` = 0, `subname` = 'Engineering Trainer' WHERE `entry` = 10993;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4151, `subname` = 'Engineering Trainer' WHERE `entry` = 11017;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4142, `subname` = 'Engineering Trainer' WHERE `entry` = 11025;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4139, `subname` = 'Apprentice Engineer' WHERE `entry` = 11026;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4137, `subname` = 'Apprentice Engineer' WHERE `entry` = 11028;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4147, `subname` = 'Apprentice Engineer' WHERE `entry` = 11029;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4149, `subname` = 'Engineering Trainer' WHERE `entry` = 11031;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4138, `subname` = 'Engineering Trainer' WHERE `entry` = 11037;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4114, `subname` = 'Apprentice Alchemist' WHERE `entry` = 11041;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4125, `subname` = 'Apprentice Alchemist' WHERE `entry` = 11042;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4121, `subname` = 'Apprentice Alchemist' WHERE `entry` = 11044;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4118, `subname` = 'Apprentice Alchemist' WHERE `entry` = 11046;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4119, `subname` = 'Apprentice Alchemist' WHERE `entry` = 11047;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4268, `subname` = 'Apprentice Tailor' WHERE `entry` = 11048;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4352, `subname` = 'Apprentice Tailor' WHERE `entry` = 11049;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4269, `subname` = 'Apprentice Tailor' WHERE `entry` = 11050;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4266, `subname` = 'Apprentice Tailor' WHERE `entry` = 11051;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4154, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11065;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4159, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11066;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4157, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11067;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4153, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11068;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4155, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11070;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4158, `subname` = 'Apprentice Enchanter' WHERE `entry` = 11071;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 4169, `subname` = 'Enchanting Trainer' WHERE `entry` = 11072;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 4170, `subname` = 'Enchanting Trainer' WHERE `entry` = 11074;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4204, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 11081;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4181, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 11083;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4207, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 11084;
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 4173, `subname` = 'Apprentice Leatherworker' WHERE `entry` = 11096;
UPDATE `creature_template` SET `npcflag` = 3, `gossip_menu_id` = 5381, `subname` = 'Trauma Surgeon' WHERE `entry` = 12920;
UPDATE `creature_template` SET `npcflag` = 3, `gossip_menu_id` = 5382, `subname` = 'Trauma Surgeon' WHERE `entry` = 12939;
UPDATE `creature_template` SET `npcflag` = 4307, `gossip_menu_id` = 7256, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 15400;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 7524, `subname` = 'Enchanting Trainer' WHERE `entry` = 16160;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 7524, `subname` = 'Alchemy Trainer' WHERE `entry` = 16161;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 16272;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Leatherworking Trainer' WHERE `entry` = 16278;
UPDATE `creature_template` SET `npcflag` = 209, `gossip_menu_id` = 7524, `subname` = 'Tailoring Trainer' WHERE `entry` = 16366;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8731, `subname` = 'Enchanting Trainer' WHERE `entry` = 16633;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8658, `subname` = 'Tailoring Trainer' WHERE `entry` = 16640;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8733, `subname` = 'Alchemy Trainer' WHERE `entry` = 16642;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5855, `subname` = 'First Aid Trainer' WHERE `entry` = 16662;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8656, `subname` = 'Engineering Trainer' WHERE `entry` = 16667;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7494, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 16669;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8732, `subname` = 'Leatherworking Trainer' WHERE `entry` = 16688;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8863, `subname` = 'Alchemy Trainer' WHERE `entry` = 16723;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Blacksmithing Trainer' WHERE `entry` = 16724;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8866, `subname` = 'Enchanting Trainer' WHERE `entry` = 16725;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8867, `subname` = 'Engineering Trainer' WHERE `entry` = 16726;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Leatherworking Trainer' WHERE `entry` = 16728;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8868, `subname` = 'Tailoring Trainer' WHERE `entry` = 16729;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5855, `subname` = 'First Aid Trainer' WHERE `entry` = 16731;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7380, `subname` = 'First Aid Trainer' WHERE `entry` = 17214;
UPDATE `creature_template` SET `npcflag` = 211, `gossip_menu_id` = 7383, `subname` = 'Engineering Trainer' WHERE `entry` = 17222;
UPDATE `creature_template` SET `npcflag` = 4305, `gossip_menu_id` = 7389, `subname` = 'Blacksmithing Trainer & Supplies' WHERE `entry` = 17245;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7455, `subname` = 'First Aid Trainer' WHERE `entry` = 17424;
UPDATE `creature_template` SET `npcflag` = 83, `gossip_menu_id` = 7430, `subname` = 'Leatherworking Trainer' WHERE `entry` = 17442;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8519, `subname` = 'Tailoring Trainer' WHERE `entry` = 17487;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8522, `subname` = 'Physician' WHERE `entry` = 19184;
UPDATE `creature_template` SET `npcflag` = 80, `gossip_menu_id` = 0, `subname` = 'Enchanting Trainer' WHERE `entry` = 19251;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 5856, `subname` = 'First Aid Trainer' WHERE `entry` = 19478;
UPDATE `creature_template` SET `npcflag` = 81, `gossip_menu_id` = 8522, `subname` = 'First Aid Trainer' WHERE `entry` = 22477;

-- ---------------------------------------------------------------------------
-- 6) Restore creature_default_trainer to base (WotLK) trainer assignments.
-- ---------------------------------------------------------------------------

-- Restore creature_default_trainer to base (WotLK) values
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (514,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1103,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1215,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1241,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1317,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1346,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1385,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1430,77);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1470,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1632,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1651,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1676,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (1702,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2114,69);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2132,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2326,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2327,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2329,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2391,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2627,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2798,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2837,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (2998,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3001,80);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3004,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3007,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3009,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3011,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3013,69);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3026,77);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3028,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3069,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3136,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3174,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3175,80);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3181,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3184,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3185,69);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3290,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3332,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3345,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3347,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3355,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3357,80);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3363,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3365,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3373,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3399,77);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3478,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3484,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3494,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3523,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3549,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3557,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3603,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3605,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3606,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3703,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3704,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3964,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (3967,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4159,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4160,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4193,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4211,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4212,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4213,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4258,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4576,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4588,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4591,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4596,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4611,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4616,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (4900,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5127,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5150,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5153,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5157,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5174,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5177,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5482,77);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5493,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5499,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5511,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5513,80);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5518,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5564,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5690,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5695,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5759,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5784,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5938,98);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5939,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (5943,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (6094,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (6289,100);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (6290,100);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (6299,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (6387,100);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (7088,100);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (7089,100);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (7949,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (8153,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (8306,77);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (10993,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11017,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11025,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11031,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11037,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11072,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (11074,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (15400,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16160,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16161,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16272,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16278,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16366,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16633,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16640,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16642,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16662,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16667,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16669,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16688,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16723,67);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16724,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16725,96);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16726,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16728,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16729,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (16731,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17214,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17222,92);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17245,60);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17424,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17442,61);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (17487,74);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (19184,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (19251,95);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (19478,83);
REPLACE INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES (22477,83);

-- ---------------------------------------------------------------------------
-- 7) Delete the module's custom Vanilla-only profession trainers (611-651),
--    their trainer_spell rows, and the "Train me." gossip options they added.
--    (The 10 menus whose rows already existed in base are left untouched.)
-- ---------------------------------------------------------------------------
DELETE FROM `trainer_spell` WHERE `TrainerId` BETWEEN 611 AND 651;
DELETE FROM `trainer` WHERE `Id` BETWEEN 611 AND 651;

DELETE FROM `gossip_menu_option`
WHERE `MenuID` IN (2742, 2745, 2747, 2748, 2750, 2761, 2782, 4112, 4114, 4116,
4118, 4119, 4121, 4125, 4130, 4137, 4139, 4143, 4144, 4147, 4148, 4153, 4154,
4155, 4157, 4158, 4159, 4173, 4181, 4182, 4183, 4187, 4188, 4204, 4207, 4262,
4264, 4265, 4266, 4268, 4269, 4344, 4352);

-- ---------------------------------------------------------------------------
-- 8) Delete the module's custom "pre-TBC" Master Leatherworking trainer NPCs.
-- ---------------------------------------------------------------------------
DELETE FROM `npc_vendor` WHERE `entry` IN (118754, 118771);
DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (119187, 118754, 118771, 121087);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (119187, 118754, 118771, 121087);
DELETE FROM `creature_template_locale` WHERE `entry` IN (119187, 118754, 118771, 121087);
DELETE FROM `creature_template_addon` WHERE `entry` IN (119187, 118754, 118771, 121087);
DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (119187, 118754, 118771, 121087);
DELETE FROM `creature` WHERE `guid` IN (619187, 618754, 618771, 621087);
DELETE FROM `creature_template` WHERE `entry` IN (119187, 118754, 118771, 121087);

-- ---------------------------------------------------------------------------
-- 9) Restore the TBC profession trainers (added in WotLK 3.1) and the
--    riding-trainer mail senders the module deleted.
-- ---------------------------------------------------------------------------

-- Restore deleted TBC/riding trainer creature spawns (base)
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`,`CreateObject`,`Comment`) VALUES
(40266,33608,530,0,0,1,1,0,-2263.63,5559.49,67.0918,5.91667,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40510,33609,530,0,0,1,1,0,-2262.64,5561.96,67.0948,5.89921,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40516,33610,530,0,0,1,1,0,-2261.59,5564.54,67.095,5.93412,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40517,33611,530,0,0,1,1,0,-2260.64,5567.08,67.092,5.93412,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40518,33612,530,0,0,1,1,0,-2264.54,5562.77,67.0939,2.79253,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40601,33613,530,0,0,1,1,0,-2265.57,5560.32,67.0911,2.80998,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40602,33614,530,0,0,1,1,0,-2263.47,5565.35,67.0937,2.80998,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(40603,33615,530,0,0,1,1,0,-2262.36,5567.8,67.0909,2.79253,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41320,33616,530,0,0,1,1,0,-2268.1,5563.18,67.0919,5.89921,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41674,33617,530,0,0,1,1,0,-2266.98,5565.78,67.0927,5.89921,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41723,33618,530,0,0,1,1,0,-2265.86,5568.36,67.0911,5.84685,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41775,33619,530,0,0,1,1,0,-2267.52,5569.19,67.0896,2.74017,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41779,33621,530,0,0,1,1,0,-2269.93,5564.2,67.09,2.75762,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(41780,33623,530,0,0,1,1,0,-2268.81,5566.68,67.0905,2.74017,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(75088,33630,530,0,0,1,1,1,-2091.98,5634.98,50.3112,2.84489,300,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(75089,33639,530,0,0,1,1,1,-2093.76,5632.88,50.3112,2.51327,300,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88165,35093,530,0,0,1,1,1,45.099,2741.53,85.2536,6.12611,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(88166,35100,530,0,0,1,1,0,-677.535,2736.3,93.9916,4.71239,180,0,0,1,0,0,0,0,0,'',0,0,NULL),
(88255,33676,530,0,0,1,1,1,-1858.61,5658.11,127.459,2.79598,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88256,33680,530,0,0,1,1,1,-1892.28,5662.67,127.459,0.45548,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88257,33682,530,0,0,1,1,1,-1897.77,5663.99,128.514,0.125614,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88259,33674,530,0,0,1,1,1,-1737.53,5629.11,128.123,0.142108,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88260,33678,530,0,0,1,1,1,-1738.27,5636.08,128.123,6.27607,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88261,33675,530,0,0,1,1,1,-1747.66,5643.65,128.123,0.000733852,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88262,33677,530,0,0,1,1,1,-1751.24,5641.23,129.071,0.845039,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88263,33683,530,0,0,1,1,1,-1707.45,5651.2,129.081,3.67248,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88264,33684,530,0,0,1,1,0,-1708.82,5642.69,129.173,2.76141,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88265,33681,530,0,0,1,1,0,-1714.82,5645.47,128.024,3.64106,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88266,33640,530,0,0,1,1,1,-2128.29,5366.55,54.9645,1.63907,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88267,33637,530,0,0,1,1,1,-2128.67,5372.53,53.8087,1.38618,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88268,33633,530,0,0,1,1,1,-2124.96,5410.95,54.8625,5.16159,25,0,0,2266,6015,0,0,0,0,'',0,0,NULL),
(88269,33631,530,0,0,1,1,1,-2040.66,5567.97,53.384,0.992695,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88270,33634,530,0,0,1,1,1,-2041.29,5561.97,54.5385,1.56054,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88271,33635,530,0,0,1,1,0,-2023.51,5596.42,53.3846,4.12487,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(88272,33636,530,0,0,1,1,0,-2026.79,5598.05,53.3846,4.81601,25,0,0,2266,0,0,0,0,0,'',0,0,NULL),
(88273,33641,530,0,0,1,1,1,-2027.25,5604.75,54.444,4.83956,25,0,0,3237,0,0,0,0,0,'',0,0,NULL),
(202334,35101,530,0,0,1,1,0,-674.484,2741.08,93.9097,4.61598,300,0,0,6473,0,0,0,0,0,'',0,0,NULL),
(203518,35099,530,0,0,1,1,0,80.0239,2720.6,86.36,4.19664,600,0,0,14937,0,0,0,0,0,'',0,0,NULL);

INSERT IGNORE INTO `creature_addon` VALUES
(88165,0,0,0,1,0,0,NULL),
(88166,0,0,0,1,0,0,NULL);

-- ---------------------------------------------------------------------------
-- 10) Remove npc_vendor rows the module ADDED (they are not in the base DB):
--     - vendor formulas / poison vendor items
--     - TBC recipe vendors on 18751/18774
--     Base 21993 rows on 18990/18991/26947 are kept.
-- ---------------------------------------------------------------------------
DELETE FROM `npc_vendor` WHERE `item` IN (13477, 13480, 14481, 14488, 15756, 16041, 16042, 16047, 18651);
DELETE FROM `npc_vendor` WHERE `entry` IN (18990, 18991) AND `item` = 21992;
DELETE FROM `npc_vendor` WHERE `entry` IN (18751, 18774) AND `item` IN (23131, 28596, 23148, 23137, 23144, 23135, 23141, 23140, 23152, 23130);

-- ---------------------------------------------------------------------------
-- 11) npcflag restores:
--     - 18990/18991 (TBC First Aid vendors): 128 -> 80 (base = vendor)
--     - 12920/12939 (Trauma Surgeons): 83 -> 3 (base = gossip + questgiver)
-- ---------------------------------------------------------------------------
UPDATE `creature_template` SET `npcflag` = 80 WHERE `entry` IN (18990, 18991);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` IN (12920, 12939);

-- ---------------------------------------------------------------------------
-- 12) Loot restores:
--     - Black Sack of Gems (17257 -> 34846) back on creature loot
--     - TBC gems removed from Prospecting vanilla ore (10620) restored
-- ---------------------------------------------------------------------------
INSERT IGNORE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(17257, 34846, 0, 0, 0, 1, 0, 1, 1, 'Magtheridon - Black Sack of Gems');

DELETE FROM `prospecting_loot_template` WHERE `Entry` = 10620 AND `Item` = 1;
INSERT IGNORE INTO `prospecting_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(10620, 1, 34045, 100, 0, 1, 0, 1, 1, 'Thorium Deposit');
