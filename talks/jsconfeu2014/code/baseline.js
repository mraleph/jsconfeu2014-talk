
function Point(x, y) {
  this.x = 0;
  this.y = 0;
}

Point.prototype.add = function (other) {
  this.x += other.x;
  this.y += other.y;
};

Point.prototype.dot = function (other) {
  return this.x * other.x + this.y * other.y;
}

function sum(points) {
  var point = new Point(0, 0);
  for (var i = 0; i < points.length; i++) {
    point.add(points[i])
  }
  return point.dot(point);
}