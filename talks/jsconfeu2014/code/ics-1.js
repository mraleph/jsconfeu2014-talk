var global = (function () { return this; })();

function Point(x, y) {
  this.x = x;
  this.y = y;
}

Point.prototype.add = function (other) {
  this.x = IC$Add$1(this.x, IC$Load$1(other));
  this.y = IC$Add$2(this.y, IC$Load$2(other));
};

Point.prototype.dot = function (other) {
  return IC$Add$3(IC$Mul$0(this.x, IC$Load$3(other)), IC$Mul$1(this.y, IC$Load$4(other)));
}

/*
function IC$Load$Miss(name, obj) {
  print(name);
  print(obj.constructor === Array);
  throw new Error("aaa");
}
*/

function CompileOpX(op_name, args, load_target, target, op, id) {
  function Template(target) {
    var target_x = target;
    return function Handler($args) {
      if ($load_target !== target_x) {
        return IC$Op$Miss($name, $args);
      }
      return $op;
    };
  }

  var ic_name = "IC$" + op_name + "$" + id;

  var src = Template
    .toString()
    .replace("$name", "'" + ic_name + "'")
    .replace("$Op$", "$" + op_name + "$")
    .replace("$op", op)
    .replace(/\$args/g, args)
    .replace("$load_target", load_target);

  print(src);

  global[ic_name] = Function("return " + src)()(target);
}

CompileOpX("Load", "obj", "obj.constructor", Point, "obj.x", 1);
CompileOpX("Load", "obj", "obj.constructor", Point, "obj.y", 2);
CompileOpX("Load", "obj", "obj.constructor", Point, "obj.x", 3);
CompileOpX("Load", "obj", "obj.constructor", Point, "obj.y", 4);
CompileOpX("Load", "obj", "obj.constructor", Array, "obj.length", 5);
CompileOpX("Load", "obj, i", "obj.constructor", Array, "obj[i]", 6);
CompileOpX("Invoke", "obj, arg0", "obj.add", Point.prototype.add, "obj.add(arg0)", 0);

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

for (var i = 0; i < 4; i++) {
  CompileOp("Add", "+", i);
}

for (var i = 0; i < 2; i++) {
  CompileOp("Mul", "*", i);
}

for (var i = 0; i < 1; i++) {
  CompileOp("Lt", "<", i);
}

function sum(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; IC$Lt$0(i, IC$Load$5(points)); i = IC$Add$0(i, 1)) {
    IC$Invoke$0(point, IC$Load$6(points, i));
  }
  return point.dot(point);
}