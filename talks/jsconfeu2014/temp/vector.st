Object subclass: #Vector
  instanceVariableNames: 'x y'
  classVariableNames: ''
  poolDictionaries: ''
  category: nil!

!Vector class methodsFor: 'instance creation'!
  x: anXNumber y: anYNumber
    ^self new x: anXNumber y: anYNumber!!

!Vector methodsFor: 'math'!
  dot: aOther
    ^ (self x * aOther x) + (self y * aOther y)!!

!Vector methodsFor: 'printing'!
  printOn: aStream
    aStream nextPutAll: '(';
      print: x;
      nextPutAll: ', ';
      print: y;
      nextPutAll: ')'!!
         
!Vector methodsFor: 'accessing'!
  x
    ^x!
  y
    ^y!
  
  x: aNumber
    x _ aNumber!
  
  y: aNumber
    y _ aNumber!
  
  x: anXNumber y: aYNumber
    x _ anXNumber.
    y _ aYNumber!!

v := (Vector x: 10 y: 10).
(v dot: 10) "Object: 10 error: did not understand #x".
