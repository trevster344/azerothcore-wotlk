'use strict';

const net = require('net');

/**
 * Connects to the AzerothCore worldserver Remote Access (telnet) console,
 * authenticates, runs a single command and returns its printed output.
 *
 * @param {object} opts
 * @param {string} opts.host      RA host (e.g. ac-worldserver)
 * @param {number} opts.port      RA port (default 3443)
 * @param {string} opts.username  RA admin username
 * @param {string} opts.password  RA admin password
 * @param {string} opts.command   Console command to run (e.g. "account create foo bar")
 * @param {number} [opts.timeoutMs=15000] Overall connection inactivity timeout
 * @param {number} [opts.idleMs=3000]     Silent gap used to detect command completion fallback
 * @returns {Promise<{output: string}>}
 */
function runCommand(opts) {
  const {
    host,
    port,
    username,
    password,
    command,
    timeoutMs = 15000,
    idleMs = 3000,
  } = opts;

  return new Promise((resolve, reject) => {
    let buffer = '';
    let stage = 'auth-required'; // auth-required -> password -> prompt -> command
    let sentCommandAt = 0;
    let settled = false;
    let idleTimer = null;

    const socket = net.connect(port, host);
    socket.setNoDelay(true);
    socket.setTimeout(timeoutMs);

    function finish(err, result) {
      if (settled) return;
      settled = true;
      clearTimeout(idleTimer);
      socket.destroy();
      if (err) reject(err);
      else resolve(result);
    }

    function onIdle() {
      if (stage === 'command') {
        const output = buffer.slice(sentCommandAt).trim();
        finish(null, { output });
      }
    }

    function resetIdle() {
      clearTimeout(idleTimer);
      idleTimer = setTimeout(onIdle, idleMs);
    }

    socket.on('connect', resetIdle);

    socket.on('data', (chunk) => {
      buffer += chunk.toString('utf8');
      resetIdle();

      if (stage === 'auth-required') {
        if (buffer.includes('Authentication Required')) {
          if (buffer.includes('Username:')) {
            stage = 'password';
            socket.write(`${username}\r\n`);
          } else {
            stage = 'auth-required'; // wait for the Username: prompt
          }
        }
        return;
      }

      if (stage === 'password') {
        if (buffer.includes('Password:')) {
          stage = 'prompt';
          socket.write(`${password}\r\n`);
        }
        return;
      }

      if (stage === 'prompt') {
        if (buffer.includes('Authentication failed')) {
          finish(new Error('RA authentication failed: check WEB_ADMIN_RA_USER / WEB_ADMIN_RA_PASS.'));
          return;
        }
        if (buffer.includes('AC>')) {
          stage = 'command';
          sentCommandAt = buffer.length;
          socket.write(`${command}\r\n`);
        }
        return;
      }

      if (stage === 'command') {
        const matchIndex = buffer.indexOf('AC>', sentCommandAt);
        if (matchIndex !== -1) {
          const output = buffer.slice(sentCommandAt, matchIndex).trim();
          finish(null, { output });
        }
      }
    });

    socket.on('error', (err) => {
      if (!settled) {
        if (stage === 'auth-required' && err.code === 'ECONNREFUSED') {
          finish(new Error(`Could not connect to the worldserver RA console at ${host}:${port}. Is the worldserver running with Ra.Enable = 1?`));
        } else {
          finish(new Error(`Worldserver RA console error: ${err.message}`));
        }
      }
    });

    socket.on('timeout', () => {
      if (!settled) {
        finish(new Error('Timed out waiting for the worldserver RA console.'));
      }
    });

    socket.on('close', () => {
      if (!settled) {
        finish(new Error('Connection to the worldserver RA console closed unexpectedly.'));
      }
    });
  });
}

module.exports = { runCommand };
