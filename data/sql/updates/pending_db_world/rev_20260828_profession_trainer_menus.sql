-- Dumphry (21209, Master Blacksmithing Trainer at Honor Hold) has a default
-- trainer (60) and 86 spells but his npcflag (4099 = repair+quest+gossip) lacks
-- UNIT_NPC_FLAG_TRAINER (0x10) and UNIT_NPC_FLAG_TRAINER_PROFESSION (0x40), so the
-- trainer window can never open. Restore the trainer flags: 4099 | 16 | 64 = 4179.
UPDATE `creature_template` SET `npcflag` = 4179 WHERE `entry` = 21209;

-- Kablamm Farflinger (21493) and Smiles O'Byron (21494) were converted to
-- schematic-teaching gossip/SmartAI NPCs (they are no longer trainers), but their
-- npcflag still advertises UNIT_NPC_FLAG_TRAINER (0x10) and
-- UNIT_NPC_FLAG_TRAINER_PROFESSION (0x40). Strip the stale trainer flags, keeping
-- only GOSSIP (0x1): 81 & ~(16 | 64) = 1.
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` IN (21493, 21494);

-- Their now-unreachable default-trainer links (trainers 115/116 exist only for
-- these two NPCs and teach the schematic spells via SmartAI instead) are dead data.
DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (21493, 21494);
