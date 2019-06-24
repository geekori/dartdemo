/*
方法

1. 普通方法
2. 属性方法（getter和setter）

 */

import 'dart:math';

class Point{
  num x,y;
  Point(this.x,this.y);

  // 普通方法
  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  num left, top,width,height;

  Rectangle(this.left,this.top,this.width,this.height);
  // right和bottom
  // getter
  num get right {
    print('right getter');
    return left + width;
  }

  // setter
  set right(num value) {
    left = value - width;
    print('right setter');
  }

  num get bottom => top + height;

  set bottom(num value) {
    top = value - height;
  }


}
void main() {
  var point1 = Point(10,20);
  var point2 = Point(20,40);
  point1.x = 100;
  point2.y = 200;
  print(point1.distanceTo(point2));

  var rect = Rectangle(3,4,20,15);
  rect.right = 12;
  print(rect.right);
  print(rect.bottom);


}