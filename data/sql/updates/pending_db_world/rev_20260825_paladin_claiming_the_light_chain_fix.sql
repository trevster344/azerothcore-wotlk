-- Fix mod-individual-progression pre-2.4 Blood Knight chain.
-- "Redeeming the Dead" (9685) must unlock after completing EITHER the
-- pre-2.4 "Claiming the Light" (109684) or the post-2.4 version (9684).

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 19 AND `SourceGroup` = 0
  AND `SourceEntry` = 9685 AND `ConditionTypeOrReference` = 8
  AND `ConditionValue1` IN (9684, 109684);

INSERT INTO `conditions`
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
 `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`,
 `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(19, 0, 9685, 0, 0, 8, 0, 9684,   0, 0, 0, 'Redeeming the Dead after post-2.4 Claiming the Light (9684)'),
(19, 0, 9685, 0, 1, 8, 0, 109684, 0, 0, 0, 'Redeeming the Dead after pre-2.4 Claiming the Light (109684)');

UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 9685;

-- Link the pre-2.4 "Claiming the Light" (109684) into "Redeeming the Dead" (9685).
-- The module's zone_silvermoon.sql sets NextQuestID = 9685 for both 9684 and 109684,
-- but its own DELETE/INSERT later resets 109684's NextQuestID to 0, which breaks the
-- reverse-quest prerequisite chain for pre-2.4 paladins.
UPDATE `quest_template_addon` SET `NextQuestID` = 9685 WHERE `ID` = 109684;
