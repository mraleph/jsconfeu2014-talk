var global = (function () { return this; })();

function Point(x, y) {
  this.x = x;
  this.y = y;
}

Point.td = new Set(["x", "y"]);

Point.prototype.add = function (other) {
  this.x = IC$Add$1(this.x, IC$Load$1(other));
  this.y = IC$Add$2(this.y, IC$Load$2(other));
};

Point.prototype.dot = function (other) {
  return IC$Add$3(IC$Mul$0(this.x, IC$Load$3(other)), IC$Mul$1(this.y, IC$Load$4(other)));
}

function Point3(x, y, z) {
  this._x = x;
  this._y = y;
}

Point3.prototype.doNotUnderstand = function (message) {
  if (message === 'get:x') {
    return this._x;
  } else if (message === 'get:y') {
    return this._y;
  } else {
    throw new Error("DO NOT UNDERSTAND " + message);
  }
};

Point3.td = new Set(["doNotUnderstand"]);

function install(handler) {
  global[handler.info.icName] = handler;
}

function IC$Load$Miss(receiver) {
  var propertyName = this.propertyName;

  var ctor = receiver.constructor;
  if (typeof ctor === "function" &&
      ctor.td instanceof Set) {
    var new_handler = null;
    if (ctor.td.has(propertyName)) {
      new_handler = CompileOpX(
          "receiver",
          "receiver.constructor",
          ctor,
          "receiver." + propertyName);
    } else if (ctor.td.has("doNotUnderstand")) {
      new_handler = CompileOpX(
        "receiver",
        "receiver.constructor",
        ctor,
        "receiver.doNotUnderstand('get:" + propertyName + "')");
    }

    if (new_handler !== null) {
      new_handler.info = this;
      install(new_handler);
      return new_handler(receiver);
    }
  }

  throw new Error("Trying to load property " + propertyName + " from an unsupported object!");
  try { } catch (e) { }
}

function makeName(icType, id) {
  return "IC$" + icType + "$" + id;
}

function CompileUninitialized(info) {
  function Handler(obj) {
    return Handler.info.miss(obj);
  }

  Handler.info = info;
  install(Handler);
}

var UUID = 0;

function CompileOpX(args, load_target, target, op) {
  function Template(target) {
    var target_x = target;
    return function Handler($args) {
      /* $id */
      if ($load_target !== target_x) {
        return Handler.info.miss($args);
      }
      return $op;
    };
  }

  var src = Template
    .toString()
    .replace("$id", (UUID++).toString())
    .replace("$op", op)
    .replace(/\$args/g, args)
    .replace("$load_target", load_target);

  return Function("return " + src)()(target);
}

function CompileInstallOpX(op_name, args, load_target, target, op, id) {
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

  var handler = Function("return " + src)()(target);
  global[ic_name] = handler;
  return handler;
}

CompileUninitialized({
  propertyName: "x",
  icName: makeName("Load", 1),
  miss: IC$Load$Miss
});
CompileUninitialized({
  propertyName: "y",
  icName: makeName("Load", 2),
  miss: IC$Load$Miss
});
CompileUninitialized({
  propertyName: "x",
  icName: makeName("Load", 3),
  miss: IC$Load$Miss
});
CompileUninitialized({
  propertyName: "y",
  icName: makeName("Load", 4),
  miss: IC$Load$Miss
});
//CompileOpX("Load", "obj", "obj.constructor", Point, "obj.x", 1);
//CompileOpX("Load", "obj", "obj.constructor", Point, "obj.y", 2);
//CompileOpX("Load", "obj", "obj.constructor", Point, "obj.x", 3);
//CompileOpX("Load", "obj", "obj.constructor", Point, "obj.y", 4);
CompileInstallOpX("Load", "obj", "obj.constructor", Array, "obj.length", 5);
CompileInstallOpX("Load", "obj, i", "obj.constructor", Array, "obj[i]", 6);
CompileInstallOpX("Invoke", "obj, arg0", "obj.add", Point.prototype.add, "obj.add(arg0)", 0);

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