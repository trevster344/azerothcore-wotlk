# mod-playerbots — professions-limit bug & upstream fix status

Tracked on: 2026-08-25.

## Issue

Player bots on this server accumulate **every** primary profession (8–11) instead of the intended 2.
Confirmed live: ~4,961 of 5,514 characters have 3+ primary professions (primary skill ids:
164 Blacksmithing, 165 Leatherworking, 171 Alchemy, 182 Herbalism, 186 Mining, 197 Tailoring,
202 Engineering, 333 Enchanting, 393 Skinning, 755 Jewelcrafting, 773 Inscription).

## Root cause

- `PlayerbotFactory::InitTradeSkills()` (`modules/mod-playerbots/src/Bot/Factory/PlayerbotFactory.cpp:2760`)
  picks only 2 primary professions (capped via `std::min(2, CONFIG_MAX_PRIMARY_TRADE_SKILL)`).
- But `PlayerbotFactory::InitAvailableSpells()` (`...:3210`) teaches every spell from every
  tradeskill trainer (Apprentice→Master ranks for all professions).
- The core resets "free profession points" to 2 on every login (`src/server/game/Entities/Player/Player.cpp:604`
  → `InitPrimaryProfessions()`), and `learnSpell` / `Trainer::CanTeachSpell` only *consume* points
  while available, never hard-block. Net effect: each bot init can learn 2 more professions, and
  bots accumulate all of them over repeated logins/level-ups.

Note: the module's config options `AiPlayerbot.AllowLearnTrainerSpells` / `AutoLearnTrainerSpells`
are loaded but never consumed (dead options) — not a usable toggle.

## Upstream status

- Issue: `mod-playerbots/mod-playerbots#2614` "Playerbots learning all professions instead of only two primary professions" (open).
- Fix: **PR `mod-playerbots/mod-playerbots#2615`** (open, NOT merged as of 2026-08-25; targets `test-staging`).
  The PR:
  - Adds config `AiPlayerbot.MaxPrimaryTradeSkill` (default 2).
  - Prevents trainer learning from adding an unselected primary profession.
  - **Self-heals existing bots** — removes excess professions during level-up/maintenance and repairs
    missing/inconsistent `firstSkill`/`secondSkill` (no manual SQL cleanup needed).
  - Keeps secondary skills (Cooking/Fishing/First Aid) untouched.

## Decision / plan

Wait for PR #2615 to merge, then:

1. Update `modules/mod-playerbots` (git pull to the merged `test-staging`/`master`).
2. Rebuild worldserver: `docker compose up -d --build ac-worldserver`.
3. Verify (expect 0 rows):

```sql
SELECT COUNT(*) FROM (
  SELECT cs.guid FROM acore_characters.character_skills cs
  WHERE cs.skill IN (164,165,171,182,186,197,202,333,393,755,773)
  GROUP BY cs.guid HAVING COUNT(DISTINCT cs.skill) >= 3
) t;
```

If the PR stalls, fallback is a local code change in `InitAvailableSpells()` (skip tradeskill
spells for unselected primary professions) plus a manual SQL cleanup of extra `character_skills` rows.
