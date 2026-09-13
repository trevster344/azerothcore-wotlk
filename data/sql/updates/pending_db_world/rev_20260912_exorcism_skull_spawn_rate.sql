-- Quest 10935 "The Exorcism of Colonel Jules": slow the "Darkness Released"
-- skulls (creature 22507) summoned during the ritual.
--
-- Creature 22507 is summoned by spell 39305 "Summon Flying Skull". The dominant
-- source is aura 39284 ("The Exorcism, Jules threatens, aura") cast by Colonel
-- Jules (22432) from timed action list 2243200 id=4. That aura is a periodic
-- trigger (EffectAura 23) with a 2000ms period that triggers 39280 -> 39305, so
-- it summons a skull every 2 seconds for the whole ritual.
--
-- Replace it with aura 39306 ("The Exorcism, Jules releases darkness, aura"),
-- which triggers the same summon but on a 15 second period, and disable the
-- separate/redundant SmartAI summon on Colonel Jules (22432 id=7).
--
-- Note: event_chance = 0 does NOT disable a SmartAI event (SmartScript skips the
-- chance roll when the value is 0 and always runs it), so use action_type = 0
-- (SMART_ACTION_NONE) to disable the redundant summon.

UPDATE `smart_scripts` SET `action_param1` = 39306
WHERE `entryorguid` = 2243200 AND `source_type` = 9 AND `id` = 4;

UPDATE `smart_scripts` SET `action_param1` = 39306
WHERE `entryorguid` = 2243200 AND `source_type` = 9 AND `id` = 16;

UPDATE `smart_scripts` SET `action_type` = 0
WHERE `entryorguid` = 22432 AND `source_type` = 0 AND `id` = 7;
