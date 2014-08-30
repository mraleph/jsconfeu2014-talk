
function Point(x, y) {
  this.x = x;
  this.y = y;
}

function IC$Load$1(obj) {
  return obj.x;
}

function IC$Load$2(obj) {
  return obj.y;
}

function IC$Load$3(obj) {
  return obj.x;
}

function IC$Load$4(obj) {
  return obj.y;
}

function IC$Load$5(obj) {
  return obj.length;
}

function IC$Load$6(obj, i) {
  return obj[i];
}

function IC$Invoke$0(obj, arg) {
  return obj.add(arg);
}

function CompileOp(op_name, op, id) {
  function Template(name) {
    return function Handler(x, y) {
      /* ${name} */
      if (typeof x !== "number" ||
          typeof y !== "number") {
        return IC$Op$Miss(name, x, y);
      }
      return op(x, y);
    };
  }

  var ic_name = "IC$" + op_name + "$" + id;

  var src = Template
    .toString()
    .replace("${name}", ic_name)
    .replace("$Op$", "$" + op_name + "$")
    .replace("op(x, y)", "x " + op + " y");

  global[ic_name] = Function("return " + src)()(ic_name);
}

var global = (function () { return this; })();

for (var i = 0; i < 4; i++) {
  CompileOp("Add", "+", i);
}

for (var i = 0; i < 2; i++) {
  CompileOp("Mul", "*", i);
}

for (var i = 0; i < 1; i++) {
  CompileOp("Lt", "<", i);
}

Point.prototype.add = function (other) {
  this.x = IC$Add$1(this.x, IC$Load$1(other));
  this.y = IC$Add$2(this.y, IC$Load$2(other));
};

Point.prototype.dot = function (other) {
  return IC$Add$3(IC$Mul$0(this.x, IC$Load$3(other)), IC$Mul$1(this.y, IC$Load$4(other)));
}

function sum(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; IC$Lt$0(i, IC$Load$5(points)); i = IC$Add$0(i, 1)) {
    IC$Invoke$0(point, IC$Load$6(points, i));
  }
  return point.dot(point);
}