-- Fix Improved Drain Soul mana refund double-proccing.
-- The 15% mana refund (18371) fired twice on a single Drain Soul killing blow:
-- once from Drain Soul's own PROC_TRIGGER_SPELL (EFFECT_2, -1120) and once from
-- the Improved Drain Soul talent proc (-18213). Disable effect 2 on -1120 (0 and 1
-- stay disabled) so only the talent proc restores mana. Restore the XP/honor gating
-- on the talent proc to match the original Drain Soul behavior.

UPDATE `spell_proc` SET `DisableEffectsMask` = 7 WHERE `SpellId` = -1120;
UPDATE `spell_proc` SET `AttributesMask` = 1 WHERE `SpellId` = -18213;
