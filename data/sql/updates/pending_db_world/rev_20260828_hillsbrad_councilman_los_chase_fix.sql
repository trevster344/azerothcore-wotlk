-- Hillsbrad Councilman (2387): when the player breaks line of sight from its
-- Frostbolt, the SmartAI cast handler flips into range mode but never re-enables
-- combat movement, leaving the NPC idle (no casts, no chase, no reset). Add
-- SMARTCAST_ENABLE_COMBAT_MOVE_ON_LOS (0x200) to the Frostbolt CMC cast flag so
-- it re-issues MoveChase on LOS failure and chases the target to regain LOS.
-- The rest of the block is preserved as-is from the live database.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2387 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2387,0,0,0,1,0,100,0,1000,1000,900000,900000,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hillsbrad Councilman - Out of Combat - Cast Frost Armor'),
(2387,0,1,0,0,0,100,0,0,0,2000,2000,0,0,11,20806,576,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hillsbrad Councilman - In Combat - Cast Frostbolt'),
(2387,0,2,0,106,0,100,0,0,0,25000,25000,0,8,11,122,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hillsbrad Councilman - Within 0-8 Range - Cast Frost Nova'),
(2387,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hillsbrad Councilman - Between 0-15% Health - Flee For Assist (No Repeat)');
