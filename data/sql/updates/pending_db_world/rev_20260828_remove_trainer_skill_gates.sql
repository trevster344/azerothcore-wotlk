-- Remove mod-individual-progression skill-gate conditions on capital-city
-- profession trainer "Train me." gossip options. Restores WotLK-authentic
-- behavior: trainers always show their menu; recipe availability is instead
-- gated by trainer_spell ReqSkillLine/ReqSkillRank.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15
  AND `SourceEntry` = 0
  AND `ConditionTypeOrReference` = 7
  AND `SourceGroup` IN (
    581, 593, 1012, 1017, 1022, 2761, 2782, 2783,
    4123, 4125, 4126, 4128, 4130, 4131, 4132,
    4146, 4147, 4148, 4150, 4151,
    4160, 4161, 4163, 4165, 4166, 4168, 4169,
    4201, 4203, 4204, 4205, 4206, 4207, 4209, 4210,
    4241, 4242, 4344, 4345, 4347, 4349, 4350, 4351, 4352, 4353, 4354
  );
