Object subclass: #Vector
  instanceVariableNames: 'x y'
  classVariableNames: ''
  poolDictionaries: ''
  category: nil!

!Vector class methodsFor: 'instance creation'!
  x: anXNumber y: anYNumber
    return self new x: anXNumber y: anYNumber!!

Vector.prototype.dot$ = function (aOther) {    return  (self.x * aOther.x) + (self.y * aOther.y)}


Vector.prototype.printOn$ = function (aStream) {    aStream.nextPutAll: '(';      print: x;      nextPutAll: ', ';      print: y;      nextPutAll: ')'}

         
Vector.prototype.x = function (x) {return x}
Vector.prototype.y = function (y) {return y}
Vector.prototype.x$ = function (aNumber) {    x _ aNumber}
Vector.prototype.y$ = function (aNumber) {    y _ aNumber}
Vector.prototype.x$y$ = function (anXNumber, aYNumber) {    x _ anXNumber.    y _ aYNumber}


v := (Vector x: 10 y: 10).
(v dot: 10) "Object: 10 error: did not understand #x".
