
load("jsperf.js");

Benchmark.prototype.setup = function () {
  points = [];
  for (var i = 0; i < 10000; i++) points.push(new Point(i + 0.5, -i + 0.5, 0));
};

measure({
  'sum': function () {
    sum(points, 0, points.length);
  }
});

Benchmark.prototype.setup = function () {
  points = [];
  for (var i = 0; i < 10000; i++) points.push(new Point3(i + 0.5, -i + 0.5, 0));
};

measure({
  'sum': function () {
    sum(points, 0, points.length);
  }
});
