'use strict';

const express = require('express');
const path = require('path');
const mysql = require('mysql2/promise');
const { runCommand } = require('./raClient');

const app = express();

const PORT = parseInt(process.env.PORT || '3000', 10);

const RA_HOST = process.env.RA_HOST || 'ac-worldserver';
const RA_PORT = parseInt(process.env.RA_PORT || '3443', 10);
const RA_USER = process.env.RA_USER || 'admin';
const RA_PASS = process.env.RA_PASS || 'admin';

const DB_HOST = process.env.DB_HOST || 'ac-database';
const DB_PORT = parseInt(process.env.DB_PORT || '3306', 10);
const DB_USER = process.env.DB_USER || 'root';
const DB_PASS = process.env.DB_PASS || 'password';
const DB_NAME = process.env.DB_NAME || 'acore_characters';
const BOT_ACCOUNT_PATTERNS = (process.env.BOT_ACCOUNT_PATTERN || 'RNDBOT%')
  .split(',')
  .map((p) => p.trim())
  .filter(Boolean);

if (BOT_ACCOUNT_PATTERNS.length === 0) {
  BOT_ACCOUNT_PATTERNS.push('RNDBOT%');
}

const db = mysql.createPool({
  host: DB_HOST,
  port: DB_PORT,
  user: DB_USER,
  password: DB_PASS,
  database: DB_NAME,
  connectionLimit: 5,
});

const CLASSES = {
  1: 'Warrior', 2: 'Paladin', 3: 'Hunter', 4: 'Rogue', 5: 'Priest',
  6: 'Death Knight', 7: 'Shaman', 8: 'Mage', 9: 'Warlock', 11: 'Druid',
};

const ALLIANCE_RACES = new Set([1, 3, 4, 7, 11]);

function factionOf(race) {
  return ALLIANCE_RACES.has(race) ? 'Alliance' : 'Horde';
}

const RATE_WINDOW_MS = 60 * 1000;
const RATE_MAX = 10;
const rateHits = new Map();

function isRateLimited(ip) {
  const now = Date.now();
  const entry = rateHits.get(ip) || { count: 0, resetAt: now + RATE_WINDOW_MS };
  if (now > entry.resetAt) {
    entry.count = 0;
    entry.resetAt = now + RATE_WINDOW_MS;
  }
  entry.count += 1;
  rateHits.set(ip, entry);
  return entry.count > RATE_MAX;
}

setInterval(() => {
  const now = Date.now();
  for (const [ip, entry] of rateHits) {
    if (now > entry.resetAt) rateHits.delete(ip);
  }
}, RATE_WINDOW_MS);

const USERNAME_RE = /^[A-Za-z0-9_]{1,17}$/;

function validate({ username, password }) {
  if (typeof username !== 'string' || !USERNAME_RE.test(username)) {
    return 'Username must be 1-17 characters using letters, numbers, or underscore.';
  }
  if (typeof password !== 'string' || password.length < 1 || password.length > 16) {
    return 'Password must be between 1 and 16 characters.';
  }
  if (/\s/.test(password)) {
    return 'Password cannot contain spaces.';
  }
  return null;
}

function parseAccountOutput(output) {
  const text = output.replace(/\u001b\[[0-9;]*m/g, '').replace(/AC>/g, '').trim();
  if (/Account created/i.test(text)) {
    return { success: true, message: text };
  }
  return { success: false, message: text || 'Unknown error from worldserver.' };
}

app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));

app.get('/api/characters', async (req, res) => {
  try {
    const [rows] = await db.query(
      `SELECT c.name, c.level, c.race, c.class, c.online
         FROM ${DB_NAME}.characters c
         JOIN acore_auth.account a ON a.id = c.account
        WHERE ${BOT_ACCOUNT_PATTERNS.map(() => 'a.username NOT LIKE ?').join(' AND ')}
        ORDER BY c.level DESC, c.name ASC`,
      BOT_ACCOUNT_PATTERNS,
    );
    const characters = rows.map((row) => ({
      name: row.name,
      level: row.level,
      faction: factionOf(row.race),
      classId: row.class,
      className: CLASSES[row.class] || `Class ${row.class}`,
      online: row.online === 1,
    }));
    return res.json({ count: characters.length, characters });
  } catch (err) {
    console.error('Failed to query characters:', err.message);
    return res.status(500).json({
      success: false,
      message: 'Failed to load characters. Is the database reachable?',
    });
  }
});

app.post('/api/register', async (req, res) => {
  if (isRateLimited(req.ip || 'unknown')) {
    return res.status(429).json({
      success: false,
      message: 'Too many attempts. Please wait a minute and try again.',
    });
  }

  const { username, password } = req.body || {};
  const invalid = validate({ username, password });
  if (invalid) {
    return res.status(400).json({ success: false, message: invalid });
  }

  const command = `account create ${username} ${password}`;
  try {
    const { output } = await runCommand({
      host: RA_HOST,
      port: RA_PORT,
      username: RA_USER,
      password: RA_PASS,
      command,
    });
    return res.json(parseAccountOutput(output));
  } catch (err) {
    return res.status(502).json({ success: false, message: err.message });
  }
});

app.listen(PORT, () => {
  console.log(`web-admin listening on port ${PORT}`);
});
