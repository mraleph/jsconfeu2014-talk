load("lodash.js");

var global = (function () { return this; })();

function Vector(x, y) {
  this.x = x;
  this.y = y;
}

Vector.prototype.add = function (other) {
  ΣStore$0(this, ΣAdd$0(ΣLoad$0(this), ΣLoad$1(other)));
  ΣStore$1(this, ΣAdd$1(ΣLoad$2(this), ΣLoad$3(other)));
};


Vector.prototype.dot = function (other) {
  return ΣAdd$2(ΣMul$0(ΣLoad$4(this), ΣLoad$5(other)),
                ΣMul$1(ΣLoad$6(this), ΣLoad$7(other)));
}

function lensum(vs, start, end) {
  var v = new Vector(0, 0);
  for (var i = start; ΣLt$0(i, end); i = ΣAdd$3(i, 1)) {
    ΣInvoke$0(v, ΣLoadIndexed$0(vs, i));
  }
  return ΣInvoke$1(v, v);
}

// --------------------- CallSite implementation -------------------

function inherit(f, base) {
  f.prototype = Object.create(base.prototype);
  f.prototype.constructor = f;
}

function CompileHandler(desc) {
  function Template() {
    return function Handler($args) {
      /* $uid */
      if ($check) {
        return $op;
      }
      return Handler.site.miss($args);
    };
  }

  desc = _.create({ uid: _.uniqueId(), check: 'true' }, desc);

  var src = _.template(Template.toString(), desc, { interpolate: /\$(\w+)/g });

  return Function('return ' + src)()();
}

function CallSite(id) {
  this.name = "Σ" + this.tag() + "$" + id;
}

CallSite.prototype.link = function (f) {
  // print("linking " + this.name + " to " + f);
  f.site = this;
  global[this.name] = f;
};

CallSite.prototype.tag = function () {
  return this.constructor.name;
};

function Load(id, key) {
  CallSite.call(this, id);
  this.key = key;
}
inherit(Load, CallSite);

Load.prototype.bootstrap = function () {
  this.link(CompileHandler({
    args: ['self'],
    op: 'self.' + this.key
  }));
};

function Store(id, key) {
  CallSite.call(this, id);
  this.key = key;
}
inherit(Store, CallSite);

Store.prototype.bootstrap = function () {
  this.link(CompileHandler({
    args: ['self', 'value'],
    op: 'self.' + this.key + ' = value'
  }));
};

function LoadIndexed(id) {
  CallSite.call(this, id);
}
inherit(LoadIndexed, CallSite);

LoadIndexed.prototype.bootstrap = function () {
  this.link(CompileHandler({
    args: ['self', 'index'],
    op: 'self[index]'
  }));
};

function BinaryOp(id, op) {
  CallSite.call(this, id);
  this.op = op;
}
inherit(BinaryOp, CallSite);

BinaryOp.prototype.bootstrap = function () {
  this.link(CompileHandler({
    args: ['lhs', 'rhs'],
    op: 'lhs ' + this.op + ' rhs',
    check: 'typeof lhs === "number" && ' +
           'typeof rhs === "number"'
  }));
};

BinaryOp.prototype.miss = function (lhs, rhs) {
  throw new Error("");
};

BinaryOp.make = function (op) {
  function Op(id) {
    BinaryOp.call(this, id, op);
  }
  inherit(Op, BinaryOp);
  var tag = ({
    '*': 'Mul',
    '+': 'Add',
    '<': 'Lt',
  })[op];

  Op.prototype.tag = function () {
    return tag;
  };

  return Op;
};

Add = BinaryOp.make('+');
Mul = BinaryOp.make('*');
Lt = BinaryOp.make('<');

function Invoke(id, message) {
  CallSite.call(this, id);
  this.message = message;
}
inherit(Invoke, CallSite);

Invoke.prototype.bootstrap = function () {
  var args = _.range(this.message.argc)
              .map(function (n) { return 'a' + n });
  this.link(CompileHandler({
    args: ['self'].concat(args),
    op: 'self.' + this.message.key + '(' + args.join(', ') + ')'
  }));
};

(function () {
  ['x', 'x', 'y', 'y', 'x', 'x', 'y', 'y']
    .forEach(function (key, idx) {
      new Load(idx, key).bootstrap();
    });

  ['x', 'y']
    .forEach(function (key, idx) {
      new Store(idx, key).bootstrap();
    });

  new LoadIndexed(0).bootstrap();

  for (var i = 0; i <= 3; i++) {
    new Add(i).bootstrap();
  }

  for (var i = 0; i <= 2; i++) {
    new Mul(i).bootstrap();
  }

  for (var i = 0; i <= 0; i++) {
    new Lt(i).bootstrap();
  }

  [{key: 'add', argc: 1},
   {key: 'dot', argc: 1}]
    .forEach(function (message, idx) {
    new Invoke(idx, message).bootstrap();
  });
})();