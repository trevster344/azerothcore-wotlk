-- The Orebor Harborage (Zangarmarsh) Kurenai quest givers Maktu (18010),
-- Puluu (18009) and Ikuti (18008) require Neutral reputation with Kurenai (978)
-- before they will interact. The ACDB base omits RequiredMinRepFaction on most
-- of their quests, so a player below Neutral could not talk to the NPC yet still
-- saw quest markers (the core only suppressed markers for hostile NPCs). The
-- sibling Orebor quest 9792 "A Message to Telaar" already carries 978/0.
UPDATE `quest_template_addon` SET `RequiredMinRepFaction` = 978, `RequiredMinRepValue` = 0
WHERE `ID` IN (9830, 9833, 9834, 9835, 9839, 9902, 9905, 10104, 10115);
