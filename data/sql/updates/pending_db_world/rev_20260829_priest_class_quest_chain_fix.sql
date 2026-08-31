-- Wire the classic priest class quest chains back to the capital-city priest
-- trainers (QuestSortID -262). Every quest below exists in quest_template but
-- had no creature_queststarter/ender row and no prerequisite, so it could never
-- be offered in-game. The reward spells are NOT taught by any trainer (unlike
-- the paladin charger / warlock felsteed, which are trainer-taught), so wiring
-- the quests is the only way priests obtain them.
--
-- Level 10: Desperate Prayer (per-race variants), Troll Hex of Weakness,
--           Undead Touch of Weakness.
-- Level 20: Human Arcane Feedback, Dwarf/Gnome A Lack of Fear, Night Elf
--           Elune's Grace, Undead Devouring Plague, Troll Shadowguard,
--           Draenei Symbol of Hope and Consume Magic.
--
-- All are gated to priests via quest_template_addon.AllowableClasses = 16 and
-- stay available purely on level (PrevQuestID = 0).

DELETE FROM `creature_queststarter` WHERE `quest` IN (5635, 5636, 5637, 5638, 5640, 5654, 5660, 5642, 5644, 5645, 5673, 5677, 10376, 10378);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(376, 5635),
(5142, 5636),
(3706, 5637),
(4606, 5638),
(11401, 5640),
(3706, 5654),
(4606, 5660),
(3706, 5642),
(4606, 5644),
(5142, 5645),
(11401, 5673),
(376, 5677),
(16502, 10376),
(16502, 10378);

DELETE FROM `creature_questender` WHERE `quest` IN (5635, 5636, 5637, 5638, 5640, 5654, 5660, 5642, 5644, 5645, 5673, 5677, 10376, 10378);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(376, 5635),
(5142, 5636),
(3706, 5637),
(4606, 5638),
(11401, 5640),
(3706, 5654),
(4606, 5660),
(3706, 5642),
(4606, 5644),
(5142, 5645),
(11401, 5673),
(376, 5677),
(16502, 10376),
(16502, 10378);
