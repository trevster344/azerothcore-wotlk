-- Tunnel Rat Scout (1173) in Loch Modan: the ranged 'Shoot' cast never fires
-- because its SMART_EVENT_RANGE row had rangeMin/rangeMax = 0/0 (IsInRange is
-- never true), and combat movement was stopped inside 5-30yd, leaving the NPC
-- standing idle at range. Replace the broken range-based pattern with the modern
-- CMC cast, adding SMARTCAST_ENABLE_COMBAT_MOVE_ON_LOS (0x200) so it chases to
-- regain line of sight.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1173 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1173,0,0,0,4,0,10,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Tunnel Rat Scout - On Aggro - Say Line 0'),
(1173,0,1,0,0,0,100,0,0,0,2300,2700,0,0,11,6660,576,0,0,0,0,2,0,0,0,0,0,0,0,0,'Tunnel Rat Scout - In Combat CMC - Cast \'Shoot\''),
(1173,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tunnel Rat Scout - Between 0-15% Health - Flee For Assist (No Repeat)');

-- Tunnel Rat Scout (1173): the main-hand 'Monster - Axe, Stone Basic' (1904)
-- display never renders in-game. Swap to a real one-hand axe (853 'Hatchet')
-- which renders. Note: no runtime reload exists for creature_equip_template,
-- this applies on the next worldserver restart.

UPDATE `creature_equip_template`
SET `ItemID1` = 853
WHERE `CreatureID` = 1173 AND `ID` = 1;
