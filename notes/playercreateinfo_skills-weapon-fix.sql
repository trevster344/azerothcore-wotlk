-- ============================================================================
-- playercreateinfo_skills weapon-skill fix (human classes) — applied 2026-08-24
-- Fixes: human Warrior / Priest / Warlock spawn with a weapon they had no skill for.
-- Scope: add-only, human classes, no removals, no worldserver restart.
--
-- FORWARD (already applied):
--   UPDATE `playercreateinfo_skills` SET `classMask` = 1488 WHERE `skill` = 136 AND `raceMask` = 0;
--   UPDATE `playercreateinfo_skills` SET `raceMask` = 1041 WHERE `skill` = 55 AND `classMask` = 1 AND `raceMask` = 1040;
--
-- UNDO (reverse):
-- ============================================================================

UPDATE `playercreateinfo_skills` SET `classMask` = 1216 WHERE `skill` = 136 AND `raceMask` = 0;
UPDATE `playercreateinfo_skills` SET `raceMask` = 1040 WHERE `skill` = 55 AND `classMask` = 1 AND `raceMask` = 1041;
