-- Fix invisible/inert creature ranged weapons (verified in-game).
-- "Monster -" ranged items (2551 crossbow, 2552 gun, 5856/5870/6088/6886 thrown)
-- have broken display models: the weapon never renders and no attack animation plays
-- (damage still lands). Real weapons of every type render + animate (tested: 24433
-- crossbow, 16004 rifle, 29010 dagger). Bows already work and are untouched.
-- Swap to real equivalents, preserving each creature's weapon type.

UPDATE `creature_equip_template`
SET `ItemID1` = CASE `ItemID1`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID1` END,
    `ItemID2` = CASE `ItemID2`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID2` END,
    `ItemID3` = CASE `ItemID3`
        WHEN 2551 THEN 24433 WHEN 2552 THEN 16004
        WHEN 5856 THEN 28972 WHEN 5870 THEN 39995
        WHEN 6088 THEN 29010 WHEN 6886 THEN 29010
        ELSE `ItemID3` END
WHERE `ItemID1` IN (2551,2552,5856,5870,6088,6886)
   OR `ItemID2` IN (2551,2552,5856,5870,6088,6886)
   OR `ItemID3` IN (2551,2552,5856,5870,6088,6886);
