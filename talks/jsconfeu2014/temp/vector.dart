class Vector {
  var x, y;

  Vector(this.x, this.y);

  dot(other) => this.x * other.x + this.y * other.y;
}

main () {
  new Vector(10, 10).dot(10);
}