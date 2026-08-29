-- mod-individual-progression rewrote the smart_scripts (Vanilla-era Smart AI) for
-- 182 of the outdoor creatures whose elite status was reverted in
-- rev_1788019219358668300. Restore the base WotLK smart_scripts blocks for the
-- 164 creatures that have a WotLK script baseline; creatures where the mod
-- added scripts with no base version to restore are left untouched.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 314 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(314,0,0,0,4,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eliza - On Aggro - Say Line 0'),
(314,0,1,0,0,0,100,0,0,0,0,0,0,0,11,20819,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Eliza - In Combat - Cast Frostbolt'),
(314,0,2,0,106,0,100,0,2100,2900,12500,36300,0,10,11,11831,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Eliza - In Combat - Cast Frost Nova'),
(314,0,3,0,0,0,100,0,4100,6400,72300,72300,0,0,11,3107,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Eliza - In Combat - Cast Summon Eliza\'s Guard');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 436 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(436,0,0,0,4,0,10,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - On Aggro - Say Line 0'),
(436,0,1,0,0,0,100,0,0,0,3000,3800,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - In Combat CMC - Cast \'Shadow Bolt\''),
(436,0,2,0,0,0,100,0,3700,4500,8400,28100,0,0,11,11639,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - In Combat - Cast \'Shadow Word: Pain\''),
(436,0,3,4,0,0,100,0,11600,18600,37600,47300,0,0,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - In Combat - Cast \'Frenzy\''),
(436,0,4,0,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - In Combat - Say Line 1'),
(436,0,5,0,0,0,75,0,24100,24100,44500,44500,0,0,11,8994,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - In Combat - Cast \'Banish\''),
(436,0,6,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Blackrock Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 594 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(594,0,0,0,4,0,15,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Henchman - On Aggro - Say Line 0 (No Repeat)'),
(594,0,1,0,13,0,100,1,3200,13800,0,0,0,0,11,8242,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Defias Henchman - Target Casting - Cast \'Shield Slam\' (No Repeat)'),
(594,0,2,0,0,0,100,1,3600,18800,0,0,0,0,11,3248,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Henchman - In Combat - Cast \'Improved Blocking\' (No Repeat)'),
(594,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Henchman - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 619 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(619,0,0,0,1,0,100,0,1000,1000,1800000,1800000,0,0,11,12544,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Defias Conjurer - Out of Combat - Disable Combat Movement (No Repeat)'),
(619,0,1,0,0,0,100,0,0,0,2400,3800,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Defias Conjurer - Out of Combat - Cast \'Frost Armor\' (No Repeat)'),
(619,0,2,0,2,0,100,0,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Conjurer - On Aggro - Cast \'Fireball\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 623 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(623,0,0,0,0,0,100,0,5900,16200,12100,19200,0,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Skeletal Miner - In Combat - Cast \'Strike\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 624 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(624,0,0,0,0,0,100,0,400,8700,2400,17300,0,0,11,5137,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Undead Excavator - In Combat - Cast \'Call of the Grave\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 625 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(625,0,0,0,0,0,100,0,500,4700,14500,32500,0,0,11,7395,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Undead Dynamiter - In Combat - Cast \'Deadmines Dynamite\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 678 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(678,0,0,0,0,0,50,512,4000,6000,11000,12000,0,0,11,5164,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mosh\'Ogg Mauler - In Combat - Cast \'Knockdown\''),
(678,0,1,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mosh\'Ogg Mauler - On Aggro - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 679 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(679,0,0,0,0,0,100,0,6500,10000,9500,12500,0,0,11,12058,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mosh\'Ogg Shaman - In Combat - Cast \'Chain Lightning\''),
(679,0,1,0,2,0,100,0,0,30,34000,38000,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mosh\'Ogg Shaman - Between 0-30% Health - Cast \'Bloodlust\''),
(679,0,2,0,0,0,100,0,9500,18000,33000,45000,0,0,11,11899,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mosh\'Ogg Shaman - In Combat - Cast \'Healing Ward\''),
(679,0,3,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mosh\'Ogg Shaman - On Aggro - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 680 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(680,0,0,0,0,0,100,512,3000,4000,30000,40000,0,0,11,9128,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mosh\'Ogg Lord - In Combat - Cast \'Battle Shout\''),
(680,0,1,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mosh\'Ogg Lord - On Aggro - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 709 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(709,0,0,0,0,0,75,512,2000,3000,10000,11000,0,0,11,8147,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mosh\'Ogg Warmonger - In Combat - Cast \'Thunderclap\''),
(709,0,1,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mosh\'Ogg Warmonger - On Aggro - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 710 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(710,0,0,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mosh\'Ogg Spellcrafter - On Aggro - Say Line 0'),
(710,0,1,0,23,0,100,0,12544,0,10000,10000,0,0,11,12544,64,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mosh\'Ogg Spellcrafter - On Aura \'Frost Armor\' Missing - Cast \'Frost Armor\''),
(710,0,2,0,0,0,100,0,0,0,3400,4800,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mosh\'Ogg Spellcrafter - In Combat - Cast \'Fireball\''),
(710,0,3,0,0,0,100,0,5000,9000,12000,15000,0,0,11,11829,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mosh\'Ogg Spellcrafter - In Combat - Cast \'Flamestrike\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 728 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(728,0,0,0,0,0,90,0,9000,9000,28000,28000,0,0,11,3147,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bhag\'thera - In Combat - Cast \'Rend Flesh\' (No Repeat)'),
(728,0,1,0,0,0,100,0,2000,2000,32000,32000,0,0,11,6016,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bhag\'thera - In Combat - Cast \'Pierce Armor\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 730 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(730,0,0,0,0,0,100,512,3000,4000,10000,10000,0,0,11,3604,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Tethis - In Combat - Cast \'Tendon Rip\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 743 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(743,0,0,0,4,0,100,0,0,0,0,0,0,0,11,7966,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wyrmkin Dreamwalker - On Aggro - Cast \'7966\''),
(743,0,1,0,2,0,100,1,20,40,0,0,0,0,11,12160,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Wyrmkin Dreamwalker - Between 20-40% Health - Cast \'20664\' (No Repeat)'),
(743,0,2,0,2,0,100,1,0,10,0,0,0,0,11,15970,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Wyrmkin Dreamwalker - Between 0-10% Health - Cast \'15970\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 744 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(744,0,0,0,0,0,100,0,2500,2500,8500,8500,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Green Scalebane - In Combat - Cast \'15496\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 745 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(745,0,0,0,0,0,100,0,3000,5000,120000,125000,0,0,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scalebane Captain - In Combat - Cast \'Battle Shout\' (No Repeat)'),
(745,0,1,0,0,0,100,0,6000,8000,30000,35000,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scalebane Captain - In Combat - Cast \'Demoralizing Shout\' (No Repeat)'),
(745,0,2,0,105,0,25,0,5000,6000,11000,16000,0,5,11,12555,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Scalebane Captain - In Combat - Cast \'Pummel\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 746 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(746,0,0,0,0,0,70,0,45000,45000,5000,5000,0,0,11,6306,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Elder Dragonkin - In Combat - Cast \'Acid Splash\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 813 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(813,0,0,0,0,0,100,0,8000,12000,18000,25000,0,0,11,8817,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Colonel Kurzen - In Combat - Cast \'Smoke Bomb\''),
(813,0,1,0,24,0,100,0,8817,0,100,100,0,0,11,8818,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Colonel Kurzen - On Target Has \'Smoke Bomb\' Aura - Cast \'Garrote\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 818 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(818,0,0,0,0,0,100,0,2000,5000,5000,6000,0,0,11,8398,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mai\'Zoth - In Combat CMC - Cast \'Frostbolt Volley\''),
(818,0,1,0,0,0,100,0,3000,6000,8000,9000,0,0,11,8814,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mai\'Zoth - In Combat - Cast \'Flame Spike\''),
(818,0,2,0,23,0,100,0,12544,0,10000,10000,0,0,11,12544,64,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mai\'Zoth - On Aura \'Frost Armor\' Missing - Cast \'Frost Armor\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 873 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(873,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Saltscale Oracle - In Combat CMC - Cast \'Lightning Bolt\''),
(873,0,1,0,14,0,100,0,700,40,25000,35000,0,0,11,11986,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Saltscale Oracle - Friendly At 700 Health - Cast \'Healing Wave\''),
(873,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Oracle - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 875 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(875,0,0,0,0,0,100,0,1000,1000,1800000,1800000,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Saltscale Tide Lord - Out of Combat - Cast \'Frost Armor\''),
(875,0,1,0,0,0,100,0,0,0,2400,3800,0,0,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Saltscale Tide Lord - In Combat CMC - Cast \'Frostbolt\''),
(875,0,2,0,106,0,100,0,6000,9000,15000,18500,0,10,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Saltscale Tide Lord - In Combat - Cast \'Frost Nova\''),
(875,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Tide Lord - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 877 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(877,0,0,0,9,0,100,0,0,0,20000,30000,0,5,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Saltscale Forager - Within 0-5 Range - Cast \'Rend\''),
(877,0,1,0,0,0,100,0,2000,3000,4000,9000,0,0,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Saltscale Forager - In Combat - Cast \'Poison\''),
(877,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Forager - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 879 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(879,0,0,0,0,0,100,0,0,0,2600,4800,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Saltscale Hunter - In Combat CMC - Cast \'Throw\''),
(879,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1051 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1051,0,0,0,4,0,15,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Dark Iron Dwarf - On Aggro - Say Line 0 (No Repeat)'),
(1051,0,1,0,0,0,100,512,2000,8300,18000,34200,0,0,11,7891,3,0,0,0,0,5,0,0,0,0,0,0,0,0,'Dark Iron Dwarf - In Combat - Cast \'Gift of Ragnaros\' (No Repeat)'),
(1051,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Dwarf - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1052 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1052,0,0,0,0,0,100,512,2100,7300,18000,26000,0,0,11,7891,3,0,0,0,0,5,0,0,0,0,0,0,0,0,'Dark Iron Saboteur - In Combat - Cast \'Gift of Ragnaros\' (No Repeat)'),
(1052,0,1,0,2,0,100,1,0,15,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Saboteur - Between 0-15% Health - Say Line 0 (No Repeat)'),
(1052,0,2,0,2,0,100,1,0,15,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Saboteur - Between 0-15% Health - Say Line 1 (No Repeat)'),
(1052,0,3,0,2,0,100,1,0,15,0,0,0,0,11,3204,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Saboteur - Between 0-15% Health - Cast \'Sapper Explode\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1053 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1053,0,0,0,4,0,15,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Dark Iron Tunneler - On Aggro - Say Line 0 (No Repeat)'),
(1053,0,1,0,0,0,100,0,500,1000,1300,5000,0,0,11,7164,33,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dark Iron Tunneler - In Combat - Cast \'Defensive Stance\' (No Repeat)'),
(1053,0,2,0,0,0,100,512,2000,8500,18000,22000,0,0,11,7891,3,0,0,0,0,5,0,0,0,0,0,0,0,0,'Dark Iron Tunneler - In Combat - Cast \'Gift of Ragnaros\' (No Repeat)'),
(1053,0,3,0,0,0,100,0,3100,12400,8900,15900,0,0,11,11971,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Dark Iron Tunneler - In Combat - Cast \'Sunder Armor\' (No Repeat)'),
(1053,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Tunneler - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1054 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1054,0,0,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Dark Iron Demolitionist - On Aggro - Say Line 0'),
(1054,0,1,0,0,0,100,0,0,0,3600,3800,0,0,11,8858,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Dark Iron Demolitionist - In Combat CMC - Cast \'Bomb\''),
(1054,0,2,0,0,0,100,512,1200,8300,8200,20100,0,0,11,7891,3,0,0,0,0,5,0,0,0,0,0,0,0,0,'Dark Iron Demolitionist - In Combat - Cast \'Gift of Ragnaros\''),
(1054,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dark Iron Demolitionist - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1178 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1178,0,0,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mo\'grosh Ogre - On Aggro - Say Line 0 (No Repeat)'),
(1178,0,1,0,0,0,85,0,500,6800,20900,25300,0,0,11,5164,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mo\'grosh Ogre - In Combat - Cast \'Knockdown\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1179 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1179,0,0,0,0,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Mo\'grosh Enforcer - In Combat - Say Line 0 (No Repeat)'),
(1179,0,1,2,0,0,100,0,7400,14500,46600,53700,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mo\'grosh Enforcer - In Combat - Cast \'Demoralizing Shout\''),
(1179,0,2,0,61,0,100,0,0,0,0,0,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mo\'grosh Enforcer - In Combat - Play Emote 15');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1180 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1180,0,0,0,0,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Mo\'grosh Brute - In Combat - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1181 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1181,0,0,0,4,0,10,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mo\'grosh Shaman - On Aggro - Say Line 0'),
(1181,0,1,0,0,0,100,0,0,0,3400,5400,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mo\'grosh Shaman - In Combat - Cast \'Lightning Bolt\''),
(1181,0,2,0,16,0,60,0,3229,30,8000,13000,1,0,11,3229,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mo\'grosh Shaman - On Friendly Unit Missing Buff \'Quick Bloodlust\' - Cast \'Quick Bloodlust\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1183 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1183,0,0,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Mo\'grosh Mystic - On Aggro - Say Line 0'),
(1183,0,1,0,0,0,100,0,0,0,3400,5400,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mo\'grosh Mystic - In Combat CMC - Cast \'Lightning Bolt\''),
(1183,0,2,0,74,0,100,1,0,0,0,0,40,0,11,547,0,0,0,0,0,9,0,0,0,0,0,0,0,0,'Mo\'grosh Mystic - On Friendly Between 0-40% Health - Cast \'Healing Wave\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1364 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1364,0,0,0,1,0,100,1,1000,1000,0,0,0,0,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Balgaras the Foul - Out of Combat - Cast \'Summon Voidwalker\''),
(1364,0,1,0,4,0,70,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Balgaras the Foul - On Aggro - Say Line 0'),
(1364,0,2,0,0,0,100,0,4800,7700,21100,21100,0,0,11,9081,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Balgaras the Foul - In Combat - Cast \'Shadow Bolt Volley\''),
(1364,0,3,0,106,0,100,0,6400,12500,19600,38000,0,10,11,11831,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Balgaras the Foul - In Combat - Cast \'Frost Nova\''),
(1364,0,4,0,0,0,100,0,13400,16400,182200,182400,0,0,11,3586,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Balgaras the Foul - In Combat - Cast \'Volatile Infection\''),
(1364,0,5,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Balgaras the Foul - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1559 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1559,0,0,0,0,0,100,0,2600,3800,6000,10200,0,0,11,5568,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'King Mukla - In Combat - Cast \'Trample\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1725 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1725,0,0,0,9,0,100,0,0,0,2000,2000,5,30,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Defias Watchman - Within Range 5-30yd - Cast Shoot');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1788 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1788,0,0,0,0,0,100,0,3000,6000,7000,12000,0,0,11,16856,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Skeletal Warlord - In Combat - Cast \'Mortal Strike\' (No Repeat)'),
(1788,0,1,0,0,0,100,0,9000,12000,21000,26000,0,0,11,12054,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Skeletal Warlord - In Combat - Cast \'Rend\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1827 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1827,0,0,0,0,0,100,0,5000,9000,8000,13000,0,0,11,14895,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Sentinel - In Combat - Cast \'Overpower\' (No Repeat)'),
(1827,0,1,0,0,0,100,0,2500,4000,5000,7000,0,0,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Sentinel - In Combat - Cast \'Strike\' (No Repeat)'),
(1827,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Sentinel - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1832 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1832,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Magus - In Combat CMC - Cast \'Fireball\''),
(1832,0,1,0,106,0,100,0,10000,12000,18000,25000,0,10,11,15744,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Magus - In Combat - Cast \'Blast Wave\''),
(1832,0,2,0,0,0,100,0,5000,10000,14000,19000,0,0,11,17203,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Magus - In Combat - Cast \'Fireball Volley\''),
(1832,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Magus - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1834 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1834,0,0,0,0,0,100,0,3000,5000,8000,12000,0,0,11,14517,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Paladin - In Combat - Cast \'Crusader Strike\' (No Repeat)'),
(1834,0,1,0,0,0,100,0,6000,8000,9000,14000,0,0,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Paladin - In Combat - Cast \'Holy Strike\' (No Repeat)'),
(1834,0,2,0,74,0,100,1,0,0,0,0,40,0,11,13952,0,0,0,0,0,9,0,0,0,0,0,0,0,0,'Scarlet Paladin - On Friendly Between 0-40% Health - Cast \'Holy Light\' (No Repeat)'),
(1834,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Paladin - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1891 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1891,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1892,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Watcher - Out of Combat - Update Entry'),
(1891,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1891,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Watcher - Out of Combat - Update Entry'),
(1891,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Watcher - Out of Combat - Cast Transform Visual'),
(1891,0,3,0,0,0,100,0,1000,1000,2000,2000,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Pyrewood Watcher - In Combat - Cast Shoot');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1894 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1894,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1893,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Sentry - Out of Combat - Update Entry'),
(1894,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1894,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Sentry - Out of Combat - Update Entry'),
(1894,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Sentry - Out of Combat - Cast Transform Visual'),
(1894,0,3,0,0,0,100,1,1000,1000,0,0,0,0,11,7164,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Sentry - In Combat - Cast Defensive Stance'),
(1894,0,4,0,105,0,25,0,2000,8000,10000,16000,0,5,11,11972,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Pyrewood Sentry - In Combat - Cast Shield Bash'),
(1894,0,5,0,0,0,100,0,5000,12000,15000,25000,0,0,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Sentry - In Combat - Cast Shield Block');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1895 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1895,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1896,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Elder - Out of Combat - Update Entry'),
(1895,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,1895,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Elder - Out of Combat - Update Entry'),
(1895,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Elder - Out of Combat - Cast Transform Visual'),
(1895,0,3,0,14,0,100,0,100,30,4500,7000,0,0,11,2053,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Pyrewood Elder - Friendly Missing Health - Cast Lesser Heal');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1947 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1947,0,0,0,0,0,85,0,5000,5000,20000,30000,0,0,11,7655,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Thule Ravenclaw - In Combat - Cast \'Hex of Ravenclaw\''),
(1947,0,1,0,0,0,85,0,1000,1000,7000,12000,0,0,11,20800,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Thule Ravenclaw - In Combat - Cast \'Immolate\''),
(1947,0,2,0,1,0,100,1,0,0,1000,1000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thule Ravenclaw - Out of Combat - Cast \'Summon Imp\''),
(1947,0,3,0,4,0,85,1,0,0,0,0,0,0,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Thule Ravenclaw - On Aggro - Cast \'Demon Armor\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2060 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2060,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Smithers - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2060,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Smithers - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2060,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Smithers - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2060,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Smithers - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2060,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Smithers - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2060,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Smithers - On Evade - Despawn In 1500 ms (Phase 1)'),
(2060,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Smithers - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2061 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2061,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Thatcher - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2061,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Thatcher - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2061,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Thatcher - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2061,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Thatcher - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2061,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Thatcher - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2061,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Thatcher - On Evade - Despawn In 1500 ms (Phase 1)'),
(2061,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Thatcher - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2062 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2062,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hendricks - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2062,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hendricks - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2062,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Hendricks - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2062,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hendricks - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2062,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Hendricks - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2062,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hendricks - On Evade - Despawn In 1500 ms (Phase 1)'),
(2062,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hendricks - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2063 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2063,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Wilhelm - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2063,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Wilhelm - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2063,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Wilhelm - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2063,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Wilhelm - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2063,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Wilhelm - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2063,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Wilhelm - On Evade - Despawn In 1500 ms (Phase 1)'),
(2063,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Wilhelm - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2064 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2064,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hartin - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2064,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hartin - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2064,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Hartin - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2064,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hartin - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2064,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Hartin - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2064,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hartin - On Evade - Despawn In 1500 ms (Phase 1)'),
(2064,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Hartin - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2065 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2065,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Cooper - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2065,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Cooper - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2065,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Cooper - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2065,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Cooper - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2065,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Cooper - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2065,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Cooper - On Evade - Despawn In 1500 ms (Phase 1)'),
(2065,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Cooper - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2066 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2066,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Higarth - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2066,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Higarth - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2066,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Higarth - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2066,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Higarth - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2066,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Higarth - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2066,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Higarth - On Evade - Despawn In 1500 ms (Phase 1)'),
(2066,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Higarth - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2067 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2067,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Brunswick - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2067,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Brunswick - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2067,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Councilman Brunswick - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2067,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Brunswick - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2067,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Councilman Brunswick - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2067,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Brunswick - On Evade - Despawn In 1500 ms (Phase 1)'),
(2067,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Councilman Brunswick - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2068 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2068,0,0,1,2,0,25,513,70,80,0,0,0,0,36,1893,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - Between 70-80% Health - Update Template To \'Moonrage Sentry\' (No Repeat)'),
(2068,0,1,2,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - Between 70-80% Health - Cast \'Transform Visual\' (No Repeat)'),
(2068,0,2,0,61,0,100,512,0,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - Between 70-80% Health - Set Event Phase 1 (No Repeat)'),
(2068,0,3,0,0,1,100,512,100,100,60000,60000,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - In Combat - Cast \'Battle Roar\' (Phase 1)'),
(2068,0,4,0,0,1,100,512,800,800,60000,60000,0,0,11,13730,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - In Combat - Cast \'Demoralizing Shout\' (Phase 1)'),
(2068,0,5,0,7,1,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - On Evade - Despawn In 1500 ms (Phase 1)'),
(2068,0,6,0,7,0,100,512,0,0,0,0,0,0,41,1500,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lord Mayor Morrison - On Evade - Despawn In 1500 ms');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2091 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2091,0,0,0,4,0,25,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Chieftain Nek\'rosh - On Aggro - Say Line 0'),
(2091,0,1,0,0,0,100,0,2300,7900,12100,16400,0,0,11,6192,32,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chieftain Nek\'rosh - In Combat - Cast \'Battle Shout\''),
(2091,0,2,0,0,0,100,0,3800,9400,6400,9400,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Chieftain Nek\'rosh - In Combat - Cast \'Demoralizing Shout\''),
(2091,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Chieftain Nek\'rosh - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2254 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2254,0,0,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Crushridge Mauler - On Aggro - Say Line 0'),
(2254,0,1,0,0,0,100,0,4100,9300,10200,17900,0,0,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crushridge Mauler - In Combat - Cast \'Strike\''),
(2254,0,2,0,0,0,100,0,7400,15800,7600,18700,0,0,11,6253,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crushridge Mauler - In Combat - Cast \'Backhand\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2255 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2255,0,0,0,4,0,10,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Crushridge Mage - On Aggro - Say Line 0'),
(2255,0,1,0,0,0,100,0,0,0,3500,4800,0,0,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crushridge Mage - In Combat CMC - Cast \'Frostbolt\''),
(2255,0,2,0,0,0,100,0,5300,7400,11300,21200,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crushridge Mage - In Combat - Cast \'Bloodlust\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2256 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2256,0,0,0,0,0,100,0,6000,9900,18000,24200,0,0,11,9791,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Crushridge Enforcer - In Combat - Cast \'Head Crack\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2287 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2287,0,0,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Crushridge Warmonger - On Aggro - Say Line 0 (No Repeat)'),
(2287,0,1,0,2,0,100,0,0,50,0,0,0,0,39,15,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crushridge Warmonger - Between 0-50% Health - Call For Help (No Repeat)'),
(2287,0,3,4,74,0,100,1,0,0,0,0,15,0,11,8269,1,0,0,0,0,9,0,0,0,0,0,0,0,0,'Crushridge Warmonger - On Friendly Between 0-15% Health - Cast \'Frenzy\' (No Repeat)'),
(2287,0,4,0,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Crushridge Warmonger - On Friendly Between 0-15% Health - Say Line 1 (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2304 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2304,0,0,0,0,0,100,0,1000,3000,23000,30000,0,0,11,7020,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Captain Ironhill - In Combat - Cast \'Stoneform\''),
(2304,0,1,0,9,0,100,0,0,0,10000,14000,0,5,11,12555,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Captain Ironhill - Within 0-5 Range - Cast \'Pummel\''),
(2304,0,2,0,2,0,100,1,0,30,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Captain Ironhill - Between 0-30% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2344 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2344,0,0,0,25,0,100,0,0,0,0,0,0,0,11,643,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Dun Garok Mountaineer - On Reset - Cast Devotion Aura'),
(2344,0,1,0,9,0,100,0,0,0,9000,15000,0,5,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Dun Garok Mountaineer - Within 0-5 Range - Cast \'Holy Strike\' (No Repeat)'),
(2344,0,2,0,2,0,100,1,0,30,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dun Garok Mountaineer - Between 0-30% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2345 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2345,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Dun Garok Rifleman - In Combat CMC - Cast \'Shoot\''),
(2345,0,1,0,0,0,100,0,12000,18000,30000,30000,0,0,11,6685,1,0,0,0,0,5,0,0,0,0,0,0,0,0,'Dun Garok Rifleman - In Combat - Cast \'Piercing Shot\''),
(2345,0,2,0,2,0,100,1,0,30,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dun Garok Rifleman - Between 0-30% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2346 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2346,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,9734,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Dun Garok Priest - In Combat CMC - Cast \'Holy Smite\''),
(2346,0,1,0,74,0,100,0,0,0,15000,21000,40,0,11,11642,1,0,0,0,0,9,0,0,0,0,0,0,0,0,'Dun Garok Priest - On Friendly Between 0-40% Health - Cast \'Heal\''),
(2346,0,2,0,2,0,100,1,0,30,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dun Garok Priest - Between 0-30% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2420 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2420,0,0,0,1,0,100,0,1000,1000,1800000,1800000,0,0,11,7366,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Targ - Out of Combat - Cast \'Berserker Stance\' (No Repeat)'),
(2420,0,1,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Targ - On Aggro - Say Line 0 (No Repeat)'),
(2420,0,2,0,0,0,100,0,4000,16500,6000,19600,0,0,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Targ - In Combat - Cast \'Cleave\' (No Repeat)'),
(2420,0,3,0,0,0,100,0,13200,16700,11500,24100,0,0,11,8147,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Targ - In Combat - Cast \'Thunderclap\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2421 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2421,0,0,0,0,0,100,0,7900,13900,11800,26000,0,0,11,8379,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Muckrake - In Combat - Cast \'Disarm\' (No Repeat)'),
(2421,0,1,0,105,0,25,0,13200,16200,6400,15700,0,5,11,12555,1,0,0,0,0,7,0,0,0,0,0,0,0,0,'Muckrake - In Combat - Cast \'Pummel\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2422 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2422,0,0,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Glommus - On Aggro - Say Line 0 (No Repeat)'),
(2422,0,1,0,0,0,100,0,500,1500,1100,9800,0,0,11,9128,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Glommus - In Combat - Cast \'Battle Shout\' (No Repeat)'),
(2422,0,2,0,0,0,100,0,5800,11800,14500,35600,0,0,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Glommus - In Combat - Cast \'Demoralizing Shout\' (No Repeat)'),
(2422,0,3,0,0,0,100,0,6800,8800,9600,32800,0,0,11,11428,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Glommus - In Combat - Cast \'Knockdown\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2558 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2558,0,0,0,0,0,100,0,5000,25600,23000,38300,0,0,11,4974,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Witherbark Berserker - In Combat - Cast \'Wither Touch\' (No Repeat)'),
(2558,0,1,0,0,0,100,0,0,15200,15100,28800,0,0,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Witherbark Berserker - In Combat - Cast \'Frenzy\' (No Repeat)'),
(2558,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Witherbark Berserker - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2569 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2569,0,0,0,4,0,5,1,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Boulderfist Mauler - On Aggro - Say Line 0 (No Repeat)'),
(2569,0,1,0,0,0,100,0,11600,20300,15900,45500,0,0,11,4955,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Boulderfist Mauler - In Combat - Cast \'Fist of Stone\' (No Repeat)'),
(2569,0,2,0,54,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Boulderfist Mauler - Just Summoned - Attack Start');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2570 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2570,0,0,0,4,0,15,0,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Boulderfist Shaman - On Aggro - Say Line 0'),
(2570,0,1,0,0,0,100,0,0,0,3500,6400,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Boulderfist Shaman - In Combat CMC - Cast \'Lightning Bolt\''),
(2570,0,2,0,2,0,100,1,0,45,0,0,0,0,11,6364,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Boulderfist Shaman - Between 0-45% Health - Cast \'Searing Totem\' (No Repeat)'),
(2570,0,3,0,2,0,100,1,0,40,0,0,0,0,11,11986,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Boulderfist Shaman - Between 0-45% Health - Cast \'Healing Wave\' (No Repeat)'),
(2570,0,4,0,54,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,0,'Boulderfist Shaman - Just Summoned - Attack Start');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2571 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2571,0,0,0,0,0,100,0,0,2500,242400,250000,0,0,11,8258,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Boulderfist Lord - In Combat - Cast \'Devotion Aura\' (No Repeat)'),
(2571,0,1,0,0,0,100,0,11200,17300,21000,37500,0,0,11,4955,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Boulderfist Lord - In Combat - Cast \'Fist of Stone\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2583 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2583,0,0,0,1,0,100,0,2000,5000,19000,23000,0,0,11,2767,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stromgarde Troll Hunter - Out of Combat - Cast \'Shadow Word: Pain\' (No Repeat)'),
(2583,0,1,0,2,0,100,0,0,50,12000,18000,0,0,11,17137,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stromgarde Troll Hunter - Between 0-50% Health - Cast \'Flash Heal\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2584 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2584,0,0,0,1,0,100,0,2000,6000,180000,180000,0,0,11,7164,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stromgarde Defender - Out of Combat - Cast \'Defensive Stance\' (No Repeat)'),
(2584,0,1,0,105,0,25,0,7000,10000,9000,13000,0,5,11,11972,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Stromgarde Defender - In Combat - Cast \'Shield Bash\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2585 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2585,0,0,0,74,0,100,1,0,0,0,0,20,0,11,8602,0,0,0,0,0,9,0,0,0,0,0,0,0,0,'Stromgarde Vindicator - On Friendly Between 0-20% Health - Cast \'Vengeance\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2588 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2588,0,0,0,1,0,100,1,0,0,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Syndicate Prowler - Out of Combat - Cast \'Sneak\''),
(2588,0,1,0,4,0,100,513,0,0,0,0,0,0,28,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Syndicate Prowler - On Aggro - Remove Aura \'Sneak\''),
(2588,0,2,0,0,0,100,0,4900,14400,22500,41700,0,0,11,14873,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Syndicate Prowler - In Combat - Cast \'Sinister Strike\''),
(2588,0,3,0,0,0,100,0,8000,15800,20200,36000,0,0,11,6713,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Syndicate Prowler - In Combat - Cast \'Disarm\''),
(2588,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Syndicate Prowler - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2590 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2590,0,0,0,1,0,50,0,1000,1000,300000,300000,0,0,11,25085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Syndicate Conjuror - Out of Combat - Cast \'Bright Campfire\''),
(2590,0,1,0,1,0,100,1,3000,3000,0,0,0,0,11,43896,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Syndicate Conjuror - Out of Combat - Cast \'Summon Voidwalker\''),
(2590,0,2,0,0,0,100,0,0,0,3400,6500,0,0,11,9613,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Syndicate Conjuror - In Combat CMC - Cast \'Shadow Bolt\''),
(2590,0,3,0,0,0,100,0,2800,20700,18700,35900,0,0,11,15970,1,0,0,0,0,6,0,0,0,0,0,0,0,0,'Syndicate Conjuror - In Combat - Cast \'Sleep\''),
(2590,0,4,0,2,0,100,1,0,15,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Syndicate Conjuror - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2591 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2591,0,0,0,1,0,100,1,1000,1000,0,0,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Syndicate Magus - Out of Combat - Cast \'Frost Armor\''),
(2591,0,1,0,0,0,100,0,0,0,3600,6300,0,0,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Syndicate Magus - In Combat CMC - Cast \'Frostbolt\''),
(2591,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Syndicate Magus - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2607 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2607,0,0,0,0,0,100,0,3000,5000,12000,15000,0,0,11,13730,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Prince Galen Trollbane - In Combat - Cast \'Demoralizing Shout\''),
(2607,0,1,0,0,0,100,0,2000,4000,6000,12000,0,0,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Prince Galen Trollbane - In Combat - Cast \'Sunder Armor\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2611 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2611,0,0,0,0,0,100,0,12400,16200,23500,31400,0,0,11,6524,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fozruk - In Combat - Cast \'Ground Tremor\''),
(2611,0,1,0,0,0,100,0,5400,8600,10700,20900,0,0,11,5568,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Fozruk - In Combat - Cast \'Trample\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2635 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2635,0,0,0,0,0,100,0,3000,8000,13000,24000,0,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Elder Saltwater Crocolisk - In Combat - Cast \'Tendon Rip\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2641 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2641,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Headhunter - In Combat CMC - Cast Throw'),
(2641,0,1,0,9,0,100,0,0,0,15000,18000,0,5,11,7357,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Headhunter - Within 0-5 Range - Cast Poisonous Stab'),
(2641,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2642 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2642,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Shadowcaster - In Combat CMC - Cast Shadow Bolt'),
(2642,0,1,0,1,0,100,1,1000,1000,0,0,0,0,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vilebranch Shadowcaster - Out of Combat - Cast Summon Voidwalker'),
(2642,0,2,0,0,0,100,0,2500,10000,35000,40000,0,0,11,7289,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Shadowcaster - In Combat - Cast Shrink'),
(2642,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2644 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2644,0,0,0,67,0,100,0,5000,9000,5000,9000,0,5,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Hideskinner - On Behind Target - Cast Backstab'),
(2644,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Hideskinnerr - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2645 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2645,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,15547,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Shadow Hunter - Combat CMC - Cast Shoot'),
(2645,0,1,0,9,0,100,0,0,0,21000,26000,0,30,11,14032,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Shadow Hunter - Within 0-30 Range - Cast Shadow Word: Pain'),
(2645,0,2,0,0,0,100,0,4000,9000,15000,21000,0,0,11,9657,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Vilebranch Shadow Hunter - In Combat - Cast Shadow Shell'),
(2645,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Shadow Hunter - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2646 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2646,0,0,0,106,0,100,0,7000,15000,7000,15000,0,5,11,11015,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Blood Drinker - Within 0-5 Range - Cast Blood Leech'),
(2646,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Blood Drinker - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2648 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2648,0,0,0,0,0,100,0,4000,7000,8000,11000,0,0,11,8242,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Aman\'zasi Guard - In Combat - Cast Shield Slam'),
(2648,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vilebranch Aman\'zasi Guard - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2681 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2681,0,0,0,25,0,100,512,0,0,0,0,0,0,11,12787,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vilebranch Raiding Wolf  - In Combat - Cast \'Thrash\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2892 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2892,0,0,0,0,0,100,0,0,0,3600,4800,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stonevault Seer - In Combat CMC - Cast \'Lightning Bolt\''),
(2892,0,1,0,74,0,80,1,0,0,0,0,40,0,11,11986,1,0,0,0,0,9,0,0,0,0,0,0,0,0,'Stonevault Seer - On Friendly Between 0-40% Health - Cast \'Healing Wave\' (No Repeat)'),
(2892,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stonevault Seer - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2932 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2932,0,0,0,0,0,100,0,7600,18600,22500,31800,0,0,11,17207,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Magregan Deepshadow - In Combat - Cast \'Whirlwind\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3528 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3528,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3529,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Armorer - Out of Combat - Update Entry'),
(3528,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3528,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Armorer - Out of Combat - Update Entry'),
(3528,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Armorer - Out of Combat - Cast Transform Visual');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3530 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3530,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3531,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Tailor - Out of Combat - Update Entry'),
(3530,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3530,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Tailor - Out of Combat - Update Entry'),
(3530,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Tailor - Out of Combat - Cast Transform Visual'),
(3530,0,3,0,67,0,100,0,7000,7000,7000,7000,0,5,11,15657,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Pyrewood Tailor - Behind Target - Cast Backstab'),
(3530,0,4,0,0,0,100,0,5000,15000,10000,17000,0,0,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Pyrewood Tailor - In Combat - Cast Disarm');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3532 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3532,0,0,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3533,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Leatherworker - Out of Combat - Update Entry'),
(3532,0,1,2,1,0,100,512,5000,5000,5000,5000,0,0,36,3532,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Leatherworker - Out of Combat - Update Entry'),
(3532,0,2,0,61,0,100,512,0,0,0,0,0,0,11,24085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Pyrewood Leatherworker - Out of Combat - Cast Transform Visual');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3631 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3631,0,0,0,0,0,100,0,5000,7000,12000,18000,0,0,11,6607,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deviate Stinglash - In Combat - Cast Lash');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3632 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3632,0,0,0,0,0,80,0,7000,14000,12000,18000,0,0,11,3427,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deviate Creeper - In Combat - Cast \'Infected Wound\''),
(3632,0,1,0,1,0,100,1,0,0,1000,1000,0,0,11,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Deviate Creeper - Out of Combat - Cast \'Stealth\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3633 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3633,0,0,0,2,0,100,0,0,40,10000,10000,0,0,11,7938,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Deviate Slayer - Between 0-40% Health - Cast \'Fatal Bite\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3655 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3655,0,0,0,1,0,100,1,0,0,1000,1000,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mad Magglish - Out of Combat - Cast \'Sneak\''),
(3655,0,1,0,0,0,100,0,0,0,9000,9000,0,0,11,7964,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Mad Magglish - In Combat - Cast \'Smoke Bomb\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4050 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4050,0,0,0,4,0,100,0,0,0,0,0,0,0,11,7090,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Caretaker - On Aggro - Cast \'7090\''),
(4050,0,1,0,0,0,100,0,2100,2800,7900,9200,0,0,11,12161,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cenarion Caretaker - In Combat - Cast \'12161\''),
(4050,0,2,0,2,0,100,1,20,80,0,0,0,0,11,782,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Caretaker - Between 20-80% Health - Cast \'782\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4052 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4052,0,0,0,4,0,100,0,0,0,0,0,0,0,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cenarion Druid - On Aggro - Cast \'9739\''),
(4052,0,1,0,2,0,100,1,90,99,0,0,0,0,11,5759,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid - Between 90-99% Health - Cast \'5759\' (No Repeat)'),
(4052,0,2,0,2,0,100,1,30,60,0,0,0,0,11,5217,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Cenarion Druid - Between 30-60% Health - Cast \'5217\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4061 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4061,0,0,0,4,0,100,0,0,0,0,0,0,0,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mirkfallon Dryad - On Aggro - Cast \'10277\''),
(4061,0,1,0,0,0,100,0,2400,2700,22400,22700,0,0,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Mirkfallon Dryad - In Combat - Cast \'7992\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4064 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4064,0,0,0,0,0,100,0,0,0,2300,3900,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Scout - In Combat CMC - Cast \'Shoot\''),
(4064,0,1,2,0,0,100,0,1400,4300,16900,25300,0,0,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Scout - In Combat - Cast \'Frenzy\''),
(4064,0,2,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Scout - In Combat - Say Line 0'),
(4064,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Blackrock Scout - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4280 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4280,0,0,0,0,0,100,0,2100,3300,8200,9300,0,0,11,13953,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Preserver - In Combat - Cast \'13953\''),
(4280,0,1,0,2,0,100,1,5,30,0,0,0,0,11,13952,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Preserver - Between 5-30% Health - Cast \'13952\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4281 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4281,0,0,0,4,0,100,0,0,0,0,0,0,0,11,6979,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Scout - On Aggro - Cast \'6979\''),
(4281,0,1,0,0,0,100,0,1700,2300,6800,7900,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Scout - In Combat - Cast \'6660\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4282 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4282,0,0,0,4,0,100,0,0,0,0,0,0,0,11,8457,21,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Magician - On Aggro - Cast \'8457\''),
(4282,0,1,0,0,0,100,0,2100,3300,8600,9200,0,0,11,9053,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Magician - In Combat - Cast \'9053\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4283 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4283,0,0,0,2,0,100,1,20,80,0,0,0,0,11,3639,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Sentry - Between 20-80% Health - Cast \'3639\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4284 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4284,0,0,0,0,0,100,0,2100,3200,8700,9600,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Augur - In Combat - Cast \'9613\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4285 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4285,0,0,0,0,0,100,0,4000,7000,8000,12000,0,0,11,9734,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Disciple - In Combat - Cast \'9734\''),
(4285,0,1,0,2,0,100,1,25,50,0,0,0,0,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Disciple - Between 25-50% Health - Cast \'11640\' (No Repeat)'),
(4285,0,2,0,2,0,100,1,0,10,0,0,0,0,11,11642,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Disciple - Between 0-10% Health - Cast \'11642\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4328 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4328,0,0,0,0,0,100,1,0,0,1000,1000,0,0,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Scalebane - In Combat - Cast Fire Shield'),
(4328,0,1,0,105,0,25,0,4000,4000,10000,10000,0,5,11,11972,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Firemane Scalebane - In Combat - Cast Shield Bash'),
(4328,0,2,0,0,0,95,0,3000,3000,15000,15000,0,0,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firemane Scalebane - In Combat - Cast Sunder Armor'),
(4328,0,3,0,8,0,100,512,42411,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Scalebane - On spell hit  - Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4329 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4329,0,0,0,8,0,100,512,42411,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Scout - On spell hit  - Despawn'),
(4329,0,1,0,4,0,100,0,0,0,0,0,0,0,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Scout - On aggr  - cast Fire Shield');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4331 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4331,0,0,0,8,0,100,512,42411,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Ash Tail - On spell hit  - Despawn'),
(4331,0,1,0,0,0,100,0,4000,6000,6000,8000,0,0,11,11969,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firemane Ash Tail - Icc  - Cast Fire Nova'),
(4331,0,2,0,4,0,100,0,0,0,0,0,0,0,11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Ash Tail - On aggr  - cast Fire Shield');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4334 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4334,0,0,0,0,0,100,0,0,0,2400,3400,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Out of Combat - Disable Combat Movement'),
(4334,0,1,0,0,0,100,0,1000,5000,600000,600000,0,0,11,18968,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - On Aggro - Cast \'Fireball\' (No Repeat)'),
(4334,0,2,0,0,0,100,0,9000,16000,30000,45000,0,0,11,11990,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Firemane Flamecaller - On Aggro - Increment Phase By 11990 (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4394 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4394,0,0,0,8,0,100,512,42485,0,0,0,0,0,11,42486,3,0,0,0,0,7,0,0,0,0,0,0,0,0,'Bubbling Swamp Ooze - On Spellhit \'End of Ooze Channel\' - Cast \'Ooze Channel Credit\' (Phase 1) (No Repeat)'),
(4394,0,1,0,2,0,100,1,0,15,0,0,0,0,11,43135,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bubbling Swamp Ooze - Between 0-15% Health - Cast \'Bubbling Ooze\' (Phase 1) (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4409 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4409,0,0,0,4,0,100,0,0,0,0,0,0,0,11,11922,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gatekeeper Kordurus - On Aggro - Cast \'11922\''),
(4409,0,1,0,0,0,100,0,2700,2900,15700,15900,0,0,11,8925,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Gatekeeper Kordurus - In Combat - Cast \'8925\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4462 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4462,0,0,0,4,0,10,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Hunter - On Aggro - Say Line 0'),
(4462,0,1,0,0,0,100,0,0,0,2200,3800,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Hunter - In Combat CMC - Cast \'Throw\''),
(4462,0,2,3,0,0,100,0,6400,31400,19700,34400,0,0,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Hunter - In Combat - Cast \'Frenzy\''),
(4462,0,3,0,61,0,100,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Hunter - In Combat - Say Line 1'),
(4462,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Blackrock Hunter - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4464 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4464,0,0,0,4,0,100,1,0,0,0,0,0,0,11,7164,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Gladiator - On Aggro - Cast \'Defensive Stance\' (No Repeat)'),
(4464,0,1,0,0,0,100,0,6000,6000,122000,130000,0,0,11,32064,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Gladiator - In Combat - Cast \'Battle Shout\' (No Repeat)'),
(4464,0,2,0,0,0,100,1,3700,6400,18100,22800,0,0,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Blackrock Gladiator - In Combat - Cast \'Disarm\' (No Repeat)'),
(4464,0,3,4,0,0,100,0,4400,14800,15900,23400,0,0,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Gladiator - In Combat - Cast \'Frenzy\''),
(4464,0,4,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Blackrock Gladiator - In Combat - Say Line 0'),
(4464,0,5,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Blackrock Gladiator - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4468 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4468,0,0,0,9,0,100,0,0,0,15000,29000,0,10,11,6814,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Jade Sludge - Within 0-10 Range - Cast Sludge Toxin');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4469 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4469,0,0,0,106,0,100,0,12000,19000,12000,19000,0,5,11,8245,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Emerald Ooze - Within 0-5 Range - Cast Corrosive Acid');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4844 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4844,0,0,0,1,0,100,0,1000,1000,1800000,1800000,0,0,11,12544,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowforge Surveyor - Out of Combat - Cast \'Frost Armor\' (Normal Dungeon)'),
(4844,0,1,0,0,0,100,0,0,0,3400,5000,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shadowforge Surveyor - In Combat CMC - Cast \'Fireball\''),
(4844,0,2,0,106,0,100,0,10700,20100,20300,22600,0,10,11,11831,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Shadowforge Surveyor - In Combat - Cast \'Frost Nova\''),
(4844,0,3,0,2,0,100,3,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Surveyor - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4845 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4845,0,0,0,105,0,25,0,5800,10100,5200,16100,0,5,11,11978,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Shadowforge Ruffian - In Combat - Cast \'Kick\''),
(4845,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Ruffian - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4846 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4846,0,0,0,0,0,100,0,6500,10900,5900,11200,0,0,11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shadowforge Digger - In Combat - Cast \'Sunder Armor\''),
(4846,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Digger - Between 0-15% Health - Flee For Assist');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4851 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4851,0,0,1,2,0,100,1,0,30,0,0,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stonevault Rockchewer - Between 0-30% Health - Cast Frenzy'),
(4851,0,1,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Stonevault Rockchewer - Between 0-30% Health - Say Line 0');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4856 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4856,0,0,0,0,0,100,0,0,0,2800,4700,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stonevault Cave Hunter - In Combat CMC - Cast \'Throw\''),
(4856,0,1,0,0,0,100,0,5900,13200,20300,26700,0,0,11,6533,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Stonevault Cave Hunter - In Combat - Cast \'Net\''),
(4856,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stonevault Cave Hunter - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5225 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5225,0,0,0,0,0,100,0,4000,9000,16000,20000,0,0,11,6917,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Murk Spitter - In Combat - Cast \'Venom Spit\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5243 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5243,0,0,0,2,0,100,1,0,30,0,0,0,0,11,12020,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cursed Atal\'ai - Between 0-30% Health - Cast \'Call of the Grave\' (Phase 1)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5261 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5261,0,0,0,0,0,100,0,5000,12000,18000,25000,0,0,11,12021,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Enthralled Atal\'ai - In Combat - Cast \'Fixate\' (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5263 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5263,0,0,0,0,0,100,0,0,6000,7000,11000,0,0,11,16186,0,0,0,0,0,5,30,0,0,0,0,0,0,0,'Mummified Atal\'ai - In Combat - Cast Fevered Plague');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5269 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5269,0,0,0,14,0,100,0,1000,40,4000,6000,0,0,11,11642,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Atal\'ai Priest - Friendly Missing Health - Cast Heal'),
(5269,0,1,0,0,0,100,0,0,3000,3000,5000,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Atal\'ai Priest - In Combat - Cast Shadow Bolt');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5645 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5645,0,0,0,0,0,100,0,3000,6000,6000,10000,0,0,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sandfury Hideskinner - In Combat - Cast \'Backstab\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5646 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5646,0,0,0,0,0,100,0,0,0,2200,3900,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sandfury Axe Thrower - In Combat CMC - Cast \'Throw\''),
(5646,0,1,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sandfury Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5647 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5647,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sandfury Firecaller - In Combat CMC - Cast \'Fireball\''),
(5647,0,1,0,0,0,85,0,8000,14000,20000,26000,0,0,11,11990,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Sandfury Firecaller - In Combat - Cast \'Rain of Fire\''),
(5647,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 5833 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(5833,0,0,0,4,0,100,1,0,0,0,0,0,0,11,15595,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Margol the Rager - On Aggro - Cast \'15595\' (No Repeat)'),
(5833,0,1,0,0,0,100,0,2700,3100,8700,10100,0,0,11,15549,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Margol the Rager - In Combat - Cast \'15549\''),
(5833,0,2,0,2,0,100,1,20,40,0,0,0,0,11,8147,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Margol the Rager - Between 20-40% Health - Cast \'8147\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 6140 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(6140,0,1,0,2,0,100,1,20,80,0,0,0,0,11,7367,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hetaera - Between 20-80% Health - Cast \'7367\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7040 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7040,0,0,0,0,0,100,0,8700,12700,18400,34200,0,0,11,12054,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Rend\''),
(7040,0,1,0,0,0,100,0,11000,11300,8400,17000,0,0,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Dragonspawn - In Combat - Cast \'Cleave\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7041 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7041,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - In Combat CMC - Cast \'Fireball\''),
(7041,0,1,0,2,0,100,0,0,50,30400,45900,0,0,11,11969,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Wyrmkin - Between 0-50% Health - Cast \'Fire Nova\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7042 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7042,0,0,0,0,0,100,0,2000,8900,7300,16800,0,0,11,13340,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Dragonspawn - In Combat - Cast \'Fire Blast\''),
(7042,0,1,0,0,0,100,0,12000,21500,35500,47100,0,0,11,9080,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Dragonspawn - In Combat - Cast \'Hamstring\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7043 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7043,0,0,0,0,0,100,0,0,0,2400,4700,0,0,11,9574,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Wyrmkin - In Combat CMC - Cast \'Flame Buffet\''),
(7043,0,1,0,0,0,100,0,1000,5200,10800,15100,0,0,11,13341,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Flamescale Wyrmkin - In Combat - Cast \'Fire Blast\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7044 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7044,0,0,0,0,0,100,0,6100,12800,7200,15700,0,0,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Black Drake - In Combat - Cast \'Flame Breath\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7045 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7045,0,0,0,0,0,100,0,800,5200,8400,17600,0,0,11,9573,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scalding Drake - In Combat - Cast \'Flame Breath\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7046 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7046,0,0,0,0,0,100,0,10900,17200,8400,18100,0,0,11,8873,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Searscale Drake - In Combat - Cast \'Flame Breath\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7872 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7872,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Death\'s Head Cultist - In Combat CMC - Cast \'Shadow Bolt\''),
(7872,0,1,0,0,0,100,0,9000,12500,8000,13000,0,0,11,11433,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Death\'s Head Cultist - In Combat - Cast \'Death & Decay\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7873 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7873,0,0,0,0,0,100,0,7000,12000,9000,15000,0,0,11,11430,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Razorfen Battleguard - In Combat - Cast \'Slam\' (Phase 1) (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7874 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7874,0,0,0,4,0,100,1,0,0,0,0,0,0,11,7966,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razorfen Thornweaver - On Aggro - Cast \'Thorns Aura\' (Phase 1) (No Repeat)'),
(7874,0,1,0,2,0,100,1,0,25,0,0,0,0,11,11431,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Razorfen Thornweaver - Between 0-25% Health - Cast \'Healing Touch\' (Phase 1) (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 7995 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(7995,0,0,0,9,0,100,0,0,0,9000,12000,0,30,11,11639,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vile Priestess Hexx - Within 0-30 Range - Cast Shadow Word: Pain'),
(7995,0,1,0,0,0,100,0,7000,12000,18000,25000,0,0,11,11641,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Vile Priestess Hexx - In Combat - Cast Hex'),
(7995,0,2,0,14,0,100,0,1200,40,12000,15000,0,0,11,11642,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Vile Priestess Hexx - Friendly At 1200 Health - Cast Heal'),
(7995,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Vile Priestess Hexx - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 8075 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8075,0,0,0,54,0,100,512,0,0,0,0,0,0,46,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Edana Hatetalon - on Just summoned - move forward'),
(8075,0,1,0,9,0,100,0,0,0,5000,5000,0,20,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Edana Hatetalon - In range  - Lightning Bolt'),
(8075,0,2,0,0,0,100,512,4000,5000,20000,22000,0,0,11,8293,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Edana Hatetalon - IC - Cast Lightning Cloud'),
(8075,0,3,0,0,0,100,512,9000,10000,7000,9000,0,0,11,12058,2,0,0,0,0,2,0,0,0,0,0,0,0,0,'Edana Hatetalon - IC - Cast Chain Lightning');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 8391 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8391,0,0,1,25,0,100,257,0,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,0,-6475.47,-1242.28,180.19,3.58,'Lathoric the Black - On Reset - Move to Altar of Suntara'),
(8391,0,1,2,61,0,100,1,0,0,0,0,0,0,12,8421,3,45000,0,0,0,8,0,0,0,0,-6481.13,-1237.45,180.068,5.10443,'Lathoric the Black - On Reset - Spawn Dorius'),
(8391,0,2,3,61,0,100,513,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Reset - Set React State Passive'),
(8391,0,3,0,61,0,100,513,0,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Reset - Set Walk'),
(8391,0,4,0,1,0,100,1,8000,8000,0,0,0,0,1,0,5000,0,0,0,0,19,8421,100,0,0,0,0,0,0,'Lathoric the Black - OOC - Say (Dorius)'),
(8391,0,5,0,52,0,100,0,0,8421,0,0,0,0,1,1,5000,0,0,0,0,19,8421,100,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say (Dorius)'),
(8391,0,6,0,52,0,100,0,1,8421,0,0,0,0,1,2,5000,0,0,0,0,19,8421,100,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say (Dorius)'),
(8391,0,7,0,52,0,100,0,2,8421,0,0,0,0,1,3,5000,0,0,0,0,19,8421,100,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say (Dorius)'),
(8391,0,8,0,52,0,100,0,3,8421,0,0,0,0,1,4,5000,0,0,0,0,19,8421,100,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say (Dorius)'),
(8391,0,9,0,52,0,100,0,4,8421,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say'),
(8391,0,10,0,52,0,100,0,0,8391,0,0,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Say'),
(8391,0,11,12,52,0,100,512,1,8391,0,0,0,0,45,1,1,0,0,0,0,10,5799,8400,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Send Data to Obsidion'),
(8391,0,12,13,61,0,100,512,0,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Remove Unit Flags'),
(8391,0,13,14,61,0,100,513,0,0,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Set React State Aggressive'),
(8391,0,14,0,61,0,100,513,0,0,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Lathoric the Black - On Text Over - Attack'),
(8391,0,15,0,7,0,100,513,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Lathoric the Black - On Evade - Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 8400 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8400,0,0,1,38,0,100,512,1,1,0,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidion - On Data Set - Remove Unattackable Flags'),
(8400,0,1,2,61,0,100,512,0,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidion - Linked with Previous Event - Set Bytes_1'),
(8400,0,2,0,61,0,100,512,0,0,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,0,'Obsidion - Linked with Previous Event - Attack'),
(8400,0,3,0,7,0,100,512,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidion - On Evade - Despawn'),
(8400,0,4,0,106,0,100,512,20000,30000,20000,30000,0,10,11,12734,2,0,0,0,0,1,0,0,0,0,0,0,0,0,'Obsidion - On Range - Cast Floor Smash'),
(8400,0,5,0,9,0,100,512,0,0,15000,30000,0,5,11,10101,2,0,0,0,0,7,0,0,0,0,0,0,0,0,'Obsidion - On Range - Cast Knock Away');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 8518 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8518,0,0,0,4,0,100,0,0,0,0,0,0,0,11,10277,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Rynthariel the Keymaster - On Aggro - Cast \'10277\''),
(8518,0,1,0,0,0,100,0,2700,2900,22700,22900,0,0,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Rynthariel the Keymaster - In Combat - Cast \'7992\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 10737 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10737,0,0,0,0,0,100,0,5000,5000,5000,10000,0,0,11,14100,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shy-Rotam - In Combat - Cast \'Terrifying Roar\' (No Repeat) (Normal Dungeon)'),
(10737,0,1,0,0,0,100,0,7000,9000,22000,27000,0,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shy-Rotam - In Combat - Cast \'Rend\' (No Repeat) (Normal Dungeon)'),
(10737,0,2,0,0,0,100,0,2000,3000,15000,20000,0,0,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shy-Rotam - In Combat - Cast \'Tendon Rip\' (No Repeat) (Normal Dungeon)'),
(10737,0,3,0,0,0,100,1,0,50,0,0,0,0,12,10741,1,180000,0,0,0,8,0,0,0,0,8074.84,-3840,690.061,4.6,'Shy-Rotam - In Combat - Summon Creature \'Sian-Rotam\' (No Repeat) (Normal Dungeon)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 10738 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10738,0,0,0,1,0,100,0,4000,4000,4000,4000,0,0,11,17205,32,0,0,0,0,1,0,0,0,0,0,0,0,0,'High Chief Winterfall - OOC - Cast \'Winterfall Firewater\''),
(10738,0,1,0,0,0,100,0,1000,2000,8000,9000,0,0,11,15793,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'High Chief Winterfall - In Combat - Cast \'Maul\''),
(10738,0,2,0,0,0,100,0,6000,7000,14000,17000,0,0,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'High Chief Winterfall - In Combat - Cast \'Frost Shock\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 10802 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10802,0,0,0,9,0,100,0,0,0,21000,25000,0,30,11,11639,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hitah\'ya the Keeper - Within 0-30 Range - Cast Shadow Word: Pain'),
(10802,0,1,0,0,0,100,0,0,0,3400,4800,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hitah\'ya the Keeper - In Combat - Cast Shadow Bolt'),
(10802,0,2,0,14,0,100,0,1400,40,12000,18000,0,0,11,11640,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'Hitah\'ya the Keeper - Friendly At 1400 Health - Cast Renew'),
(10802,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hitah\'ya the Keeper - Between 0-15% Health - Flee For Assist (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 10807 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(10807,0,0,0,4,0,100,0,0,0,0,0,0,0,11,16552,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Brumeran - On Aggro - Cast \'16552\''),
(10807,0,1,0,0,0,100,0,2100,2900,8700,9600,0,0,11,15797,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Brumeran - In Combat - Cast \'15797\''),
(10807,0,2,0,2,0,100,0,5,30,0,0,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Brumeran - Between 5-30% Health - Cast \'8599\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11722 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11722,0,0,0,0,0,100,0,3000,4500,12000,15000,0,0,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Ashi Defender - In Combat - Cast Cripple'),
(11722,0,1,0,0,0,100,0,6000,9000,22000,27000,0,0,11,6713,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Ashi Defender - In Combat - Cast Disarm');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11728 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11728,0,0,0,0,0,100,0,6000,9000,20000,22000,0,0,11,16790,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Zora Reaver - In Combat - Cast Knockdown'),
(11728,0,1,0,9,0,100,0,0,0,16000,19000,0,5,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Zora Reaver - Within 0-5 Range - Cast Cleave');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11729 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11729,0,0,0,0,0,100,0,3000,5000,12000,16000,0,0,11,7951,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Zora Hive Sister - In Combat - Cast Toxic Spit');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11730 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11730,0,0,0,25,0,100,0,0,0,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Hive\'Regal Ambusher - On Reset - Cast Sneak'),
(11730,0,1,0,9,0,100,0,0,0,15000,24000,0,5,11,744,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Regal Ambusher - Within 0-5 Range - Cast Poison');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11732 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11732,0,0,0,0,0,100,0,2000,5000,16000,19000,0,0,11,21047,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Regal Spitfire - In Combat - Cast Corrosive Acid Spit'),
(11732,0,1,0,9,0,100,0,0,0,13000,15000,0,5,11,5708,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Regal Spitfire - Within 0-5 Range - Cast Swoop');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11733 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11733,0,0,0,0,0,100,0,6000,12000,9000,20000,0,0,11,3584,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Regal Slavemaker - In Combat - Cast \'Volatile Infection\' (No Repeat)'),
(11733,0,1,0,0,0,100,0,10000,20000,30000,45000,0,0,11,19469,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Hive\'Regal Slavemaker - In Combat - Cast \'Poison Mind\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11734 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11734,0,0,0,4,0,100,0,0,0,0,0,0,0,11,19471,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Hive\'Regal Hive Lord - On Aggro - Cast Berserker Charge');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11777 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11777,0,0,0,0,0,65,0,20000,20000,7500,7500,0,0,11,5568,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Shadowshard Rumbler - In Combat - Cast \'Trample\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11785 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11785,0,0,0,0,0,70,0,6000,6000,16000,16000,0,0,11,11020,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Ambereye Basilisk - In Combat - Cast \'Petrify\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11786 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11786,0,0,0,0,0,70,0,6000,6000,16000,16000,0,0,11,11020,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Ambereye Reaver - In Combat - Cast \'Petrify\' (No Repeat)'),
(11786,0,1,0,0,0,75,0,8000,8000,8000,8000,0,0,11,40504,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Ambereye Reaver - In Combat - Cast \'Cleave\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11896 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11896,0,0,0,9,0,100,0,0,0,3000,4000,0,30,11,14516,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Borelgore - Within 0-30 Range - Cast \'Strike\''),
(11896,0,1,0,0,0,100,0,6000,8000,8000,11000,0,0,11,5568,1,0,0,0,0,1,0,0,0,0,0,0,0,0,'Borelgore - In Combat - Cast \'Trample\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11897 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11897,0,0,0,0,0,100,0,2000,4000,8000,11000,0,0,11,18663,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Duskwing - In Combat - Cast \'Shadow Shock\''),
(11897,0,1,0,0,0,100,0,6000,9000,14000,17000,0,0,11,8281,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Duskwing - In Combat - Cast \'Sonic Burst\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 11921 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11921,0,0,0,4,0,100,0,0,0,0,0,0,0,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Besseleth - On Aggro - Cast \'745\''),
(11921,0,2,0,2,0,100,1,20,80,0,0,0,0,11,5416,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Besseleth - Between 20-80% Health - Cast \'5416\' (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 12579 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(12579,0,0,0,0,0,85,0,5000,5000,23000,23000,0,0,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Bloodfury Ripper - In Combat - Cast \'Rend\''),
(12579,0,1,2,2,0,100,1,0,40,0,0,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bloodfury Ripper - Between 0-40% Health - Cast \'Enrage\' (No Repeat)'),
(12579,0,2,0,61,0,100,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Bloodfury Ripper - Between 0-40% Health - Say Line 0 (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 12865 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(12865,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ambassador Malcin - Combat CMC - Cast \'Shadow Bolt\''),
(12865,0,1,0,0,0,100,0,5000,9000,15000,25000,0,0,11,8282,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Ambassador Malcin - Combat - Cast \'Curse of Blood\'');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 14621 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(14621,0,0,0,4,0,100,1,0,0,0,0,0,0,11,11639,32,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Maltorius - On Aggro - Cast \'11639\' (No Repeat)'),
(14621,0,1,0,2,0,100,1,30,60,0,0,0,0,11,11974,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Overseer Maltorius - Between 30-60% Health - Cast \'11974\' (No Repeat)'),
(14621,0,2,0,0,0,100,0,2700,4100,9700,13100,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Maltorius - In Combat - Cast \'9613\''),
(14621,0,3,0,2,0,100,1,5,30,0,0,0,0,11,13323,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Overseer Maltorius - Between 5-30% Health - Cast \'13323\' (No Repeat)');
