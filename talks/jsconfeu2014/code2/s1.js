var global = (function () { return this; })();

function Vector(x, y) {
  this.x = x;
  this.y = y;
}

Vector.prototype.add = function (other) {
  Set(this, 'x', Add(Get(this, 'x'), Get(other, 'x')));
  Set(this, 'x', Add(Get(this, 'y'), Get(other, 'y')));
};

Vector.prototype.dot = function (other) {
  return Add(Mul(Get(this, 'x'), Get(other, 'x')),
             Mul(Get(this, 'y'), Get(other, 'y')));
}

function lensum(vs, start, end) {
  var v = new Vector(0, 0);
  for (var i = start; Lt(i, end); i = Add(i, 1)) {
    Invoke(v, 'add', Get(vs, i));
  }
  return Invoke(v, 'dot', v);
}

function Set(self, key, value) {
  self[key] = value;
}

function Get(self, key) {
  return self[key];
}

function Add(x, y) {
  return x + y;
}

function Mul(x, y) {
  return x * y;
}

function Lt(x, y) {
  return x < y;
}

function Invoke(self, key /*, ... */) {
  return self[key].apply(self, Array.prototype.slice.call(arguments, 2));
}