-- Fix Barrens quest "Counterattack!" (4021) event re-triggering (AzerothCore #11582).
-- The SmartAI timed actionlist 338900 (run by Regthar Deathgate on quest accept/gossip)
-- kept a 2-hour "Set Event Phase 1" tail action, so the actionlist stayed "running" and
-- blocked any new run for 2h (SmartScript::SetScript9 refuses to start a new actionlist
-- while one is active, allowOverride=0). This made the quest uncompletable for anyone
-- re-triggering within that window. Phase 2/4 gating already prevents a new quest accept
-- from resetting an in-progress event, so only the tail needs to go.

-- 1) Remove the 2h tail: the actionlist now finishes right after Krom'zar spawns (phase 4).
DELETE FROM `smart_scripts`
WHERE `entryorguid` = 338900 AND `source_type` = 9 AND `id` = 27 AND `link` = 0;

-- 2) Failsafe: reset Regthar to phase 1 five minutes after phase 4 (Krom'zar spawned),
--    so an abandoned/unfinished event can't leave the trigger permanently locked.
DELETE FROM `smart_scripts`
WHERE `entryorguid` = 3389 AND `source_type` = 0 AND `id` = 11;

INSERT INTO `smart_scripts`
(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,
 `event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,
 `action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,
 `target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
VALUES
(3389,0,11,0,1,4,100,512,300000,300000,300000,300000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'Regthar Deathgate - OOC (P4) - Set Phase 1');
