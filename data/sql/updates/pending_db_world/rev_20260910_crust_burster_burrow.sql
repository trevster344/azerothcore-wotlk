-- Crust Burster family: reburrow-and-advance behavior.
--
-- Problem: bursters only submerged out of combat (on reset). On aggro they stayed
-- above ground forever and the core's combat reposition handler made them slide.
-- They had no logic to reburrow and move closer to a distant target.
--
-- Fix: rebuild SmartAI using event phases.
--   Phase 1 = surfaced, rooted in place and shooting.
--   Phase 2 = burrowed, unrooted, chasing underground.
-- Root (SMART_ACTION_SET_ROOT, 103) is what disables the reposition handler
-- (CanFreeMove/IsFreeToMove). UNIT_FLAG_DISABLE_MOVE is intentionally cleared
-- because MotionMaster::MoveChase refuses to run while it is set.
--
-- Standing up clears UNIT_FIELD_BYTES_1's submerged stand state (9) with
-- SMART_ACTION_REMOVE_UNIT_FIELD_BYTES_1 (91): SMART_ACTION_SET_UNIT_FIELD_BYTES_1
-- ORs the value, so setting 0 is a no-op and the burster stayed submerged forever.
-- The surface step uses the Poison range (50yd) so the burster only submerges when
-- it actually has to move (target beyond 50yd).
--
-- Affected creatures: 16844 Crust Burster, 16857 Marauding Crust Burster,
--                     21380 Greater Crust Burster, 23285 Nethermine Burster.
-- References: azerothcore/azerothcore-wotlk#19001, #23088.

-- Crust Burster (16844) - Tunnel Bore Passive 29147
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 16844;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16844,0,0,1,25,0,100,512,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Reset - Set Not Selectable'),
(16844,0,1,2,61,0,100,512,0,0,0,0,0,0,19,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Reset - Remove Disable Move'),
(16844,0,2,3,61,0,100,512,0,0,0,0,0,0,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Reset - Cast Tunnel Bore Passive'),
(16844,0,3,4,61,0,100,512,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Reset - Set Bytes1 Submerged'),
(16844,0,4,0,61,0,100,512,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Reset - Set Rooted Off'),
(16844,0,5,6,4,0,100,512,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Not Selectable'),
(16844,0,6,7,61,0,100,512,0,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Tunnel Bore Passive'),
(16844,0,7,8,61,0,100,512,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Remove Bytes1 Submerged (Stand)'),
(16844,0,8,9,61,0,100,512,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Set Rooted On'),
(16844,0,9,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - On Aggro - Set Phase 1'),
(16844,0,10,0,0,1,100,0,1000,6000,8000,11000,0,0,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crust Burster - In Combat - Cast Bore'),
(16844,0,11,0,9,1,100,0,0,0,2000,3500,5,50,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crust Burster - Within Range 5-50yd - Cast Poison'),
(16844,0,12,13,9,1,100,0,0,0,1000,1000,50,250,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Far - Cast Tunnel Bore Passive'),
(16844,0,13,14,61,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Far - Set Not Selectable'),
(16844,0,14,15,61,0,100,0,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Far - Set Bytes1 Submerged'),
(16844,0,15,16,61,0,100,0,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Far - Set Rooted Off'),
(16844,0,16,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Far - Set Phase 2'),
(16844,0,17,18,9,2,100,0,0,0,1000,1000,0,50,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Near - Remove Tunnel Bore Passive'),
(16844,0,18,19,61,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Near - Remove Not Selectable'),
(16844,0,19,20,61,0,100,0,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Near - Remove Bytes1 Submerged (Stand)'),
(16844,0,20,21,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Near - Set Rooted On'),
(16844,0,21,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crust Burster - Target Near - Set Phase 1');

-- Marauding Crust Burster (16857) - Tunnel Bore Red Passive 34038
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 16857;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(16857,0,0,1,25,0,100,512,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Reset - Set Not Selectable'),
(16857,0,1,2,61,0,100,512,0,0,0,0,0,0,19,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Reset - Remove Disable Move'),
(16857,0,2,3,61,0,100,512,0,0,0,0,0,0,11,34038,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Reset - Cast Tunnel Bore Red Passive'),
(16857,0,3,4,61,0,100,512,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Reset - Set Bytes1 Submerged'),
(16857,0,4,0,61,0,100,512,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Reset - Set Rooted Off'),
(16857,0,5,6,4,0,100,512,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Aggro - Remove Not Selectable'),
(16857,0,6,7,61,0,100,512,0,0,0,0,0,0,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Aggro - Remove Tunnel Bore Red Passive'),
(16857,0,7,8,61,0,100,512,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Aggro - Remove Bytes1 Submerged (Stand)'),
(16857,0,8,9,61,0,100,512,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Aggro - Set Rooted On'),
(16857,0,9,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - On Aggro - Set Phase 1'),
(16857,0,10,0,0,1,100,0,1000,6000,8000,11000,0,0,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Marauding Crust Burster - In Combat - Cast Bore'),
(16857,0,11,0,9,1,100,0,0,0,2000,3500,5,50,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Within Range 5-50yd - Cast Poison'),
(16857,0,12,13,9,1,100,0,0,0,1000,1000,50,250,11,34038,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Far - Cast Tunnel Bore Red Passive'),
(16857,0,13,14,61,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Far - Set Not Selectable'),
(16857,0,14,15,61,0,100,0,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Far - Set Bytes1 Submerged'),
(16857,0,15,16,61,0,100,0,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Far - Set Rooted Off'),
(16857,0,16,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Far - Set Phase 2'),
(16857,0,17,18,9,2,100,0,0,0,1000,1000,0,50,28,34038,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Near - Remove Tunnel Bore Red Passive'),
(16857,0,18,19,61,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Near - Remove Not Selectable'),
(16857,0,19,20,61,0,100,0,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Near - Remove Bytes1 Submerged (Stand)'),
(16857,0,20,21,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Near - Set Rooted On'),
(16857,0,21,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Marauding Crust Burster - Target Near - Set Phase 1');

-- Greater Crust Burster (21380) - Tunnel Bore Passive 29147
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 21380;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(21380,0,0,1,25,0,100,512,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Reset - Set Not Selectable'),
(21380,0,1,2,61,0,100,512,0,0,0,0,0,0,19,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Reset - Remove Disable Move'),
(21380,0,2,3,61,0,100,512,0,0,0,0,0,0,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Reset - Cast Tunnel Bore Passive'),
(21380,0,3,4,61,0,100,512,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Reset - Set Bytes1 Submerged'),
(21380,0,4,0,61,0,100,512,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Reset - Set Rooted Off'),
(21380,0,5,6,4,0,100,512,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Aggro - Remove Not Selectable'),
(21380,0,6,7,61,0,100,512,0,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Aggro - Remove Tunnel Bore Passive'),
(21380,0,7,8,61,0,100,512,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Aggro - Remove Bytes1 Submerged (Stand)'),
(21380,0,8,9,61,0,100,512,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Aggro - Set Rooted On'),
(21380,0,9,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - On Aggro - Set Phase 1'),
(21380,0,10,0,0,1,100,0,1000,6000,8000,11000,0,0,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Greater Crust Burster - In Combat - Cast Bore'),
(21380,0,11,0,9,1,100,0,0,0,2000,3500,5,50,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Greater Crust Burster - Within Range 5-50yd - Cast Poison'),
(21380,0,12,13,9,1,100,0,0,0,1000,1000,50,250,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Far - Cast Tunnel Bore Passive'),
(21380,0,13,14,61,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Far - Set Not Selectable'),
(21380,0,14,15,61,0,100,0,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Far - Set Bytes1 Submerged'),
(21380,0,15,16,61,0,100,0,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Far - Set Rooted Off'),
(21380,0,16,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Far - Set Phase 2'),
(21380,0,17,18,9,2,100,0,0,0,1000,1000,0,50,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Near - Remove Tunnel Bore Passive'),
(21380,0,18,19,61,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Near - Remove Not Selectable'),
(21380,0,19,20,61,0,100,0,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Near - Remove Bytes1 Submerged (Stand)'),
(21380,0,20,21,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Near - Set Rooted On'),
(21380,0,21,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Greater Crust Burster - Target Near - Set Phase 1');

-- Nethermine Burster (23285) - Tunnel Bore Passive 29147
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 23285;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23285,0,0,1,25,0,100,512,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Reset - Set Not Selectable'),
(23285,0,1,2,61,0,100,512,0,0,0,0,0,0,19,4,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Reset - Remove Disable Move'),
(23285,0,2,3,61,0,100,512,0,0,0,0,0,0,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Reset - Cast Tunnel Bore Passive'),
(23285,0,3,4,61,0,100,512,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Reset - Set Bytes1 Submerged'),
(23285,0,4,0,61,0,100,512,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Reset - Set Rooted Off'),
(23285,0,5,6,4,0,100,512,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Not Selectable'),
(23285,0,6,7,61,0,100,512,0,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Tunnel Bore Passive'),
(23285,0,7,8,61,0,100,512,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Remove Bytes1 Submerged (Stand)'),
(23285,0,8,9,61,0,100,512,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Set Rooted On'),
(23285,0,9,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - On Aggro - Set Phase 1'),
(23285,0,10,0,0,1,100,0,1000,6000,8000,11000,0,0,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Nethermine Burster - In Combat - Cast Bore'),
(23285,0,11,0,9,1,100,0,0,0,2000,3500,5,50,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Nethermine Burster - Within Range 5-50yd - Cast Poison'),
(23285,0,12,13,9,1,100,0,0,0,1000,1000,50,250,11,29147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Far - Cast Tunnel Bore Passive'),
(23285,0,13,14,61,0,100,0,0,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Far - Set Not Selectable'),
(23285,0,14,15,61,0,100,0,0,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Far - Set Bytes1 Submerged'),
(23285,0,15,16,61,0,100,0,0,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Far - Set Rooted Off'),
(23285,0,16,0,61,0,100,0,0,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Far - Set Phase 2'),
(23285,0,17,18,9,2,100,0,0,0,1000,1000,0,50,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Near - Remove Tunnel Bore Passive'),
(23285,0,18,19,61,0,100,0,0,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Near - Remove Not Selectable'),
(23285,0,19,20,61,0,100,0,0,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Near - Remove Bytes1 Submerged (Stand)'),
(23285,0,20,21,61,0,100,0,0,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Near - Set Rooted On'),
(23285,0,21,0,61,0,100,0,0,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Nethermine Burster - Target Near - Set Phase 1');
