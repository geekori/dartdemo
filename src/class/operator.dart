/*
运算符重载

a + b
 */
class Vector {
  final int x,y;
  Vector(this.x,this.y);

  Vector operator +(Vector v) => Vector(x + v.x,y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x,y - v.y);
  Vector operator *(Vector v) => Vector(x * v.x,y * v.y);

}

void main() {
  final v1 =Vector(10,20);
  final v2 = Vector(30,40);
  var add = v1 + v2;
  var sub = v1 - v2;
  print(add.x);
  print(add.y);
  print(sub.x);
  print(sub.y);

  print((v1 * v2).x);
  print((v1 * v2).y);

}