'use strict';

const form = document.getElementById('register-form');
const result = document.getElementById('result');
const submitBtn = document.getElementById('submit-btn');
const charCount = document.getElementById('char-count');
const charList = document.getElementById('char-list');
const showOffline = document.getElementById('show-offline');

let lastCharacters = null;

const CLASS_COLORS = {
  1: '#C79C6E',
  2: '#F58CBA',
  3: '#ABD473',
  4: '#FFF569',
  5: '#FFFFFF',
  6: '#C41F3B',
  7: '#0070DE',
  8: '#69CCF0',
  9: '#9482C9',
  11: '#FF7D0A',
};

const FACTION_COLORS = {
  Alliance: '#2b5fc4',
  Horde: '#b3282d',
};

const CLASS_GLYPHS = {
  1: '<path d="M5 4l6 6M19 4l-6 6" stroke="#fff" stroke-width="2.2" stroke-linecap="round"/>'
    + '<path d="M3 5l2.5 2M21 5l-2.5 2" stroke="#fff" stroke-width="2.2" stroke-linecap="round"/>'
    + '<path d="M10 10l-5 8M14 10l5 8" stroke="#fff" stroke-width="2.2" stroke-linecap="round"/>',
  2: '<path d="M12 3l6 2v6c0 4-2.6 7-6 8-3.4-1-6-4-6-8V5l6-2z" fill="none" stroke="#fff" stroke-width="2" stroke-linejoin="round"/>'
    + '<path d="M12 7v6M9 10h6" stroke="#fff" stroke-width="2" stroke-linecap="round"/>',
  3: '<path d="M12 4c4 2 5 5 5 8s-1 6-5 8c-4-2-5-5-5-8s1-6 5-8z" fill="none" stroke="#fff" stroke-width="2"/>'
    + '<path d="M12 4v16" stroke="#fff" stroke-width="1.4"/>'
    + '<path d="M9 14l6-6" stroke="#fff" stroke-width="2" stroke-linecap="round"/>',
  4: '<path d="M14 3l7 7-3 2-7-7z" fill="#fff"/>'
    + '<path d="M11 15l-3 3M10 12l-4 4" stroke="#fff" stroke-width="2" stroke-linecap="round"/>',
  5: '<path d="M12 4v16M6 8h12" stroke="#fff" stroke-width="2.6" stroke-linecap="round"/>',
  6: '<circle cx="12" cy="13" r="7" fill="#fff"/>'
    + '<circle cx="9.3" cy="12" r="1.4" fill="#C41F3B"/>'
    + '<circle cx="14.7" cy="12" r="1.4" fill="#C41F3B"/>'
    + '<path d="M9.5 16.5h5" stroke="#C41F3B" stroke-width="1.2" stroke-linecap="round"/>',
  7: '<path d="M13 3L5 13h5l-2 8 9-11h-5l1-7z" fill="#fff"/>',
  8: '<path d="M12 3l2 5 5.5.7-4 3.8 1.1 5.5L12 15.5 7.4 18l1.1-5.5-4-3.8L10 8l2-5z" fill="#fff"/>',
  9: '<circle cx="12" cy="13" r="6" fill="#fff"/>'
    + '<path d="M6.5 9.5L3.5 10M17.5 9.5l3 .5" stroke="#fff" stroke-width="2" stroke-linecap="round"/>'
    + '<circle cx="9.8" cy="12.5" r="1.3" fill="#9482C9"/>'
    + '<circle cx="14.2" cy="12.5" r="1.3" fill="#9482C9"/>'
    + '<path d="M9.5 16.5h5" stroke="#9482C9" stroke-width="1.2" stroke-linecap="round"/>',
  11: '<path d="M12 20C6 14 6 7 12 4c6 3 6 10 0 16z" fill="#fff"/>'
    + '<path d="M12 10v6" stroke="#FF7D0A" stroke-width="1.4" stroke-linecap="round"/>',
};

function classIcon(classId) {
  const color = CLASS_COLORS[classId] || '#999999';
  const glyph = CLASS_GLYPHS[classId] || '';
  return '<svg class="icon-class" viewBox="0 0 24 24" aria-hidden="true">'
    + '<circle cx="12" cy="12" r="12" fill="' + color + '"/>'
    + glyph
    + '</svg>';
}

function factionIcon(faction) {
  const color = FACTION_COLORS[faction] || '#888888';
  const letter = faction === 'Alliance' ? 'A' : 'H';
  return '<svg class="icon-faction" viewBox="0 0 24 24" aria-hidden="true">'
    + '<path d="M12 2l8 3v6c0 5-3.2 9.2-8 11-4.8-1.8-8-6-8-11V5l8-3z" fill="' + color + '" stroke="rgba(255,255,255,0.35)" stroke-width="1" stroke-linejoin="round"/>'
    + '<text x="12" y="16" text-anchor="middle" font-family="Arial, sans-serif" font-size="11" font-weight="700" fill="#fff">' + letter + '</text>'
    + '</svg>';
}

function showResult(success, message) {
  result.hidden = false;
  result.className = 'result ' + (success ? 'ok' : 'error');
  result.textContent = message;
}

function renderCharacters(allCharacters) {
  const characters = showOffline.checked
    ? allCharacters
    : allCharacters.filter((character) => character.online);
  charCount.textContent = characters.length === 1
    ? '1 character'
    : characters.length + ' characters';
  charList.innerHTML = '';
  if (characters.length === 0) {
    const li = document.createElement('li');
    li.className = 'empty';
    li.textContent = allCharacters.length === 0
      ? 'No characters yet.'
      : 'No characters online.';
    charList.appendChild(li);
    return;
  }
  for (const character of characters) {
    const li = document.createElement('li');
    li.className = 'character';

    const icons = document.createElement('span');
    icons.className = 'character-icons';
    icons.insertAdjacentHTML('beforeend', factionIcon(character.faction));
    icons.insertAdjacentHTML('beforeend', classIcon(character.classId));

    const info = document.createElement('span');
    info.className = 'character-info';
    const name = document.createElement('span');
    name.className = 'character-name';
    name.textContent = character.name;
    name.style.color = CLASS_COLORS[character.classId] || '#e8eaed';
    const online = document.createElement('span');
    online.className = 'online-badge' + (character.online ? ' is-online' : '');
    online.textContent = character.online ? 'Online' : 'Offline';
    info.appendChild(name);
    info.appendChild(online);

    const meta = document.createElement('span');
    meta.className = 'character-meta';
    meta.textContent = 'Lv ' + character.level + ' ' + character.className;

    li.appendChild(icons);
    li.appendChild(info);
    li.appendChild(meta);
    charList.appendChild(li);
  }
}

async function loadCharacters() {
  try {
    const res = await fetch('/api/characters');
    if (!res.ok) throw new Error('bad status');
    const data = await res.json();
    lastCharacters = data.characters;
    renderCharacters(lastCharacters);
  } catch (err) {
    charCount.textContent = 'Unable to load characters.';
    charList.innerHTML = '';
  }
}

form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const username = form.username.value.trim();
  const password = form.password.value;
  const confirm = form.confirm.value;

  if (password !== confirm) {
    showResult(false, 'Passwords do not match.');
    return;
  }

  submitBtn.disabled = true;
  showResult(false, 'Creating account\u2026');

  try {
    const res = await fetch('/api/register', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username, password }),
    });
    const data = await res.json().catch(() => ({ message: 'Unexpected server response.' }));
    const success = data.success === true;
    showResult(success, data.message || 'Unknown response.');
    if (success) {
      form.reset();
      form.username.focus();
      loadCharacters();
    }
  } catch (err) {
    showResult(false, 'Could not reach the registration server. Please try again later.');
  } finally {
    submitBtn.disabled = false;
  }
});

loadCharacters();
setInterval(loadCharacters, 15000);

showOffline.addEventListener('change', () => {
  if (lastCharacters) renderCharacters(lastCharacters);
});
