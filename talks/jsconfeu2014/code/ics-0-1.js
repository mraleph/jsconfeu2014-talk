var Σ = (function () { return this; })();

function Point(x, y) {
  this.x = x;
  this.y = y;
}

Point.prototype.add = function (other) {
  this.x = σAddϕ1(this.x, σLoadϕ1(other));
  this.y = σAddϕ2(this.y, σLoadϕ2(other));
};

Point.prototype.dot = function (other) {
  return σAddϕ3(σMulϕ0(this.x, σLoadϕ3(other)), σMulϕ1(this.y, σLoadϕ4(other)));
}

function Compile(desc) {
  function Template() {
    return function Handler($args) {
      return $op;
    };
  }

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

Plug("Loadϕ1", CompilePropertyLoad("x"));
Plug("Loadϕ2", CompilePropertyLoad("y"));
Plug("Loadϕ3", CompilePropertyLoad("x"));
Plug("Loadϕ4", CompilePropertyLoad("y"));
Plug("Loadϕ5", CompilePropertyLoad("length"));
Plug("Loadϕ6", Compile({ args: ["self", "i"], op: "self[i]" }));
Plug("Invokeϕ0", Compile({ args: ["self", "arg0"], op: "self.add(arg0)" }));

for (var i = 0; i < 4; i++) {
  Plug("Addϕ" + i, CompileBinaryOp('+'));
}

for (var i = 0; i < 2; i++) {
  Plug("Mulϕ" + i, CompileBinaryOp('*'));
}

for (var i = 0; i < 1; i++) {
  Plug("Ltϕ" + i, CompileBinaryOp('<'));
}

function sum(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; σLtϕ0(i, σLoadϕ5(points)); i = σAddϕ0(i, 1)) {
    σInvokeϕ0(point, σLoadϕ6(points, i));
  }
  return point.dot(point);
}