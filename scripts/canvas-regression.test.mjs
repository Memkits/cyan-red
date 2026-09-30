import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { draw_effect, comp_codearea, submit_shortcut_$q_ } from '../js-out/app.comp.container.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';

const t = c.init_tags(['args', 'method', 'mount', 'update', 'unmount', 'cursor', 'code', 'data', 'content', 'event', 'input', 'keydown', 'children', 'some', 'value', 'states', 'ops']);
const map = c._$n__$M_;
const field = (v, k) => c.option_$o_unwrap(c.get(v, k));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const en = c._$n_enum_$o_nth;
const runEffect = (action, el) => {
  const effect = draw_effect(c._$L_());
  return field(effect, t.method)(field(effect, t.args), c._$L_(action, el, false));
};
for (const action of [t.mount, t.update]) {
  test(`${action} Canvas effect preserves dimensions, styles and drawing calls`, () => {
    const calls = [];
    const ctx = Object.fromEntries(['clearRect', 'moveTo', 'rect', 'stroke', 'fill'].map(name => [name, (...args) => { calls.push([name, ...args]); }]));
    const el = { offsetWidth: 640, offsetHeight: 480, getContext: (kind) => { assert.equal(kind, '2d'); return ctx; } };
    runEffect(action, el);
    assert.equal(el.width, 640);
    assert.equal(el.height, 480);
    assert.equal(ctx.fillStyle, 'hsl(200,80%,80%)');
    assert.equal(ctx.strokeStyle, 'red');
    assert.deepEqual(calls, [['clearRect', 0, 0, 640, 480], ['moveTo', 10, 10], ['rect', 40, 40, 80, 80], ['stroke'], ['fill']]);
  });
}
test('unmount does not dereference the Canvas host', () => {
  runEffect(t.unmount, null);
});
test('Canvas trusted boundary rejects missing 2d context', () => {
  assert.throws(() => runEffect(t.mount, { offsetWidth: 1, offsetHeight: 1, getContext: () => null }), TypeError);
});
test('Meta+Enter prevents default while other keyboard events do not submit', () => {
  for (const [metaKey, key, expected] of [[true, 'Enter', true], [false, 'Enter', false], [true, 'x', false]]) {
    let prevented = 0;
    const event = map(t.event, { metaKey, key, preventDefault: () => { prevented++; } });
    assert.equal(submit_shortcut_$q_(event), expected);
    assert.equal(prevented, expected ? 1 : 0);
  }
});
function handler(node, kind) {
  if (component_$q_(node)) return handler(c.option_$o_unwrap(component_tree(node)), kind);
  const event = c.get(node, t.event);
  if (en(event, 0) === t.some) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (en(fn, 0) === t.some) return c.option_$o_unwrap(fn);
  }
  const children = c.get(node, t.children);
  if (en(children, 0) === t.some) {
    const pairs = c.option_$o_unwrap(children);
    for (let i = 0; i < c.count(pairs); i++) {
      const found = handler(nth(nth(pairs, i), 1), kind);
      if (found) return found;
    }
  }
}
test('code input dispatches one nested states Enum without corrupting Store', () => {
  const cursor = c._$L_(t.code);
  const tree = comp_codearea(map(t.cursor, cursor));
  let next;
  handler(tree, t.input)(map(t.value, 'rect 1 2'), (...args) => {
    assert.equal(args.length, 1);
    next = updater(store, args[0], 'input', 1);
  });
  assert.equal(field(field(field(field(next, t.states), t.code), t.data), t.content), 'rect 1 2');
  assert.ok(c._$e_(field(next, t.ops), field(store, t.ops)));
});
test('Meta+Enter dispatches one parsed ops Enum accepted by updater', () => {
  const tree = comp_codearea(map(t.cursor, c._$L_(t.code), t.data, map(t.content, 'rect 1 2')));
  let next, count = 0;
  handler(tree, t.keydown)(map(t.event, { metaKey: true, key: 'Enter', preventDefault() {} }), (...args) => {
    assert.equal(args.length, 1);
    assert.equal(en(args[0], 0), t.ops);
    count++;
    next = updater(store, args[0], 'submit', 1);
  });
  assert.equal(count, 1);
  assert.ok(c._$e_(field(next, t.ops), c.parse_cirru('rect 1 2')));
  assert.deepEqual(field(next, t.ops).value, [['rect', '1', '2']]);
});
