/*
引用库中的部分成员

show
 */
import 'mylib.dart' show greet;
import 'mylib.dart' show MyClass;
import 'mylib.dart' as my show MyClass;
void main() {
  print(greet("John"));
  MyClass().process();

  my.MyClass().process();



}