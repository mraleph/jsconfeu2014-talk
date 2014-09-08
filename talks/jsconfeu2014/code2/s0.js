
function Point(x, y) {
  this.x = x;
  this.y = y;
}

Point.prototype.add = function (other) {
  this.x += other.x;
  this.y += other.y;
};

Point.prototype.dot = function (other) {
  return this.x * other.x + this.y * other.y;
}

function lensum(points, start, end) {
  var point = new Point(0, 0);
  for (var i = start; i < end; i++) {
    point.add(points[i])
  }
  return point.dot(point);
}