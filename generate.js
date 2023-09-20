const fs = require('fs');
const data = fs.readFileSync('pb3.lua', {encoding: 'utf8', flag: 'r'});
const arr = data.split(/\r?\n/);

var out = '';
function add(str) {
  out += str + '\n';
}

var funcs = {};
for (let i = 0; i < arr.length; ++i) {
  let m = arr[i].match(/^\s*function\s+(.*)\s+end\s*$/);
  if (!m) continue;
  let n = m[1].match(/^([^\(]*)\(([^\)]*)\)/);
  let f = {name: n[1]};
  let args = n[2].split(/,\s*/);
  for (let j = i - 1; arr[j].match(/^---/); --j) {
    let p = arr[j].match(/^---@param ([^ ]+) ([^ ]+) (.*)$/)
    if (p) {
      if (!f.param) f.param = [];
      f.param.push({name: p[1], type: p[2], comment: p[3] || ''});
      for (let k = 0; k < args.length; ++k) {
        if (args[k] == p[1]) args[k] = p[1] + ': ' + p[2];
      }
    }

    f.args = args.join(', ');

    let r = arr[j].match(/^---@return ([^ ]+) ([^ ]+) ?(.*)?$/)
    if (r) f.return = {name: r[2], type: r[1], comment: r[3] || ''};

    let c = arr[j].match(/^---@cat (.*)$/)
    if (c) f.cat = c[1];

    let e = arr[j].match(/^---@example (.*)$/);
    if (e) {
      if (!f.code) f.code = [];
      f.code.push(e[1]);
    }

    let d = arr[j].match(/^---([^@].*)$/);
    if (d) {
      if (!f.desc) f.desc = [];
      f.desc.push(d[1].replace(/\[CHEAT\] ?/, ''));
    }

    if (arr[j].match(/^---@cheat/)) f.cheat = true;
  }
  if (f.param) f.param.reverse();
  if (f.desc) f.desc.reverse();
  if (f.code) f.code.reverse();

  if (!f.cat) f.cat = 'Generic';
  if (!funcs[f.cat]) funcs[f.cat] = [];
  funcs[f.cat].push(f);
}

const ordered = Object.keys(funcs).sort().reduce((obj, key) => {
  obj[key] = funcs[key];
  return obj;
}, {});

for (const [k, v] of Object.entries(ordered)) {
  v.sort((a, b) => {
    a.name.localeCompare(b);
  });

  add('## ' + k + ' functions');
  for (var f of v) {
    add('### ' + f.name + '\n');
    if (f.code) add('\n> Example:\n\n```lua\n' + f.code.join('\n') + '\n```\n');
    add('#### ' + (f.return ? f.return.type : 'nil') + ' ' + f.name + '(' +
        f.args + ')\n');
    if (f.cheat) {
      if (!f.desc)
        add('\n<aside class="warning">Flagged as cheat!</aside>\n');
      else
        add('\n<aside class="warning">' + f.desc.join('\n') + '</aside>\n');
    } else if (f.desc) {
      add(f.desc.join('\n'));
    }
    if (f.param) {
      add('\n\nArgument | Type | Comment');
      add('---- | ---- | -------');
      for (var p of f.param) {
        add(p.name + ' | ' + p.type + ' | ' + p.comment);
      }
      add('\n')
    }
    if (f.return && f.return.comment != '') {
      add('\n\nReturn | Type | Comment');
      add('---- | ---- | -------');
      add(f.return.name + ' | ' + f.return.type + ' | ' + f.return.comment);
      add('\n')
    }
  }
}

console.log(out);
