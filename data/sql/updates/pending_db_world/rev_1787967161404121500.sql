-- Shorten Umpi's (entry 2230) respawn from 300s to 60s.
-- Her SmartAI script kills her whenever quest 499 (Elixir of Suffering) is
-- completed, so on busy servers she was often dead for minutes.
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 2230;
