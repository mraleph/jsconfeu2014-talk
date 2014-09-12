
//load('s5.js')

try {
  var p = new Vector(0, 0)
  p['dot:'](10);
} catch (e) {
  print(e.stack);
}

try {
  lensum([p], 2, 3);
} catch (e) {
  print(e.stack);
}

function MockVector(x, y) {
  this._x = 0;
  this._y = 0;
}

MockVector.understands = new Set(['doesNotUnderstand:']);

MockVector.prototype['doesNotUnderstand:'] = function (message) {
  print('MockVector got message ' + message);
  if (message === 'x') {
    return this._x;
  } else if (message === 'y') {
    return this._y;
  } else {
    Object$doesNotUnderstand.apply(this, arguments);
  }
};

try {
  var p = new Vector(0, 0)
  var mockVector = new MockVector(0, 0);
  p['dot:'](mockVector);
} catch (e) {
  print(e.stack);
}
