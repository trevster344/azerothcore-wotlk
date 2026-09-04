-- Scarlet Gallant (4287) in Scarlet Monastery Library: Hammer of Justice (5589)
-- is a 10-yard spell cast by an in-combat timed event on a random hostile within
-- 10yd, so the guards can stun players from range / across the bookshelf ledges
-- without ever reaching melee. Restrict it like other elite paladin NPCs
-- (Crimson Defender 10421, Cursed Paladin 7071): SMART_EVENT_RANGE gated to the
-- current victim within 0-5yd (melee), keeping the 13-22s repeat cadence.

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4287 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4287,0,0,0,1,0,100,0,1000,20000,20000,40000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Gallant - Out of Combat - Play Emote'),
(4287,0,1,0,4,0,20,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Scarlet Gallant - On Aggro - Say Line 0'),
(4287,0,2,0,9,0,100,0,2000,10000,4800,10900,0,5,11,14517,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Gallant - Within 0-5 Range - Cast Crusader Strike'),
(4287,0,3,0,9,0,100,0,0,0,13000,22000,0,5,11,5589,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Scarlet Gallant - Within 0-5 Range - Cast Hammer of Justice'),
(4287,0,4,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Gallant - Between 0-15% Health - Flee For Assist (No Repeat)');
