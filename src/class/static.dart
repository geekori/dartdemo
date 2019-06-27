/*
静态变量和静态方法


 */
import 'dart:math';

class Point {
  num x,y;

  Point(this.x, this.y);

  static num result;
  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    result = sqrt(dx * dx + dy * dy);
    return result;
  }
}


void main() {
  var a = Point(20,30);
  var b = Point(30,40);

  var distance = Point.distanceBetween(a, b);
  print(distance);
  print(Point.result);
}