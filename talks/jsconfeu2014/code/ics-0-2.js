var Σ = (function () { return this; })();

function Point(x, y) {
  this.x = x;
  this.y = y;
}

Point.prototype.add = function (other) {
  this.x = σAdd$1(this.x, σLoad$1(other));
  this.y = σAdd$2(this.y, σLoad$2(other));
};

Point.prototype.dot = function (other) {
  return σAdd$3(σMul$0(this.x, σLoad$3(other)), σMul$1(this.y, σLoad$4(other)));
}

var UUID = 0;

function Compile(desc) {
  function Template() {
    return function Handler($args) {
      /* $uuid */
      return $op;
    };
  }

  desc.uuid = UUID++;

  var src = Template.toString()
    .replace(/\$(\w+)/g, function (_, name) {
      return desc[name];
    });

  return Function('return ' + src)()();
}

function CompilePropertyLoad(name) {
  return Compile({args: ['self'], op: 'self.' + name });
}

function CompileBinaryOp(op) {
  return Compile({args: ['lhs', 'rhs'], op: 'lhs ' + op + ' rhs'});
}

function Plug(η, σ) {
  Σ["σ" + η] = σ;
}

Plug("Load$1", CompilePropertyLoad("x"));
Plug("Load$2", CompilePropertyLoad("y"));
Plug("Load$3", CompilePropertyLoad("x"));
Plug("Load$4", CompilePropertyLoad("y"));
Plug("Load$5", CompilePropertyLoad("length"));
Plug("Load$6", Compile({ args: ["self", "i"], op: "self[i]" }));
Plug("Invoke$0", Compile({ args: ["self", "arg0"], op: "self.add(arg0)" }));

for (var i = 0; i < 4; i++) {
  Plug("Add$" + i, CompileBinaryOp('+'));
}

for (var i = 0; i < 2; i++) {
  Plug("Mul$" + i, CompileBinaryOp('*'));
}

for (var i = 0; i < 1; i++) {
  Plug("Lt$" + i, CompileBinaryOp('<'));
}

function sum(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; σLt$0(i, σLoad$5(points)); i = σAdd$0(i, 1)) {
    σInvoke$0(point, σLoad$6(points, i));
  }
  return point.dot(point);
}