
load('s5.js')

try {
  var p = new Vector(0, 0)
  p.dot(10);
} catch (e) {
  print(e);
}

try {
  lensum([p], 2, 3);
} catch (e) {
  print(e);
}
