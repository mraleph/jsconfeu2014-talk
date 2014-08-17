
function Point(x, y) {
  this.x = 0;
  this.y = 0;
}

function IC$Load$1(obj) {
  return obj.x;
}

function IC$Load$2(obj) {
  return obj.y;
}

Point.prototype.add = function (other) {
  this.x = IC$Add$1(this.x, IC$Load$1(other));
  this.y = IC$Add$2(this.y, IC$Load$2(other));
};

Point.prototype.dot = function (other) {
  return this.x * other.x + this.y * other.y;
}

function sum(points) {
  var point = new Point(0, 0);
  for (var i = 0; IC$Le$0(i, IC$Load$3(points)); i++) {
    point.add(IC$Load$4(points, i));
  }
  return point.dot(point);
}