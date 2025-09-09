import test from 'node:test';
import assert from 'node:assert';
import { solve } from './solution.js';

test('example', () => {
  assert.strictEqual(typeof solve, 'function');
});
