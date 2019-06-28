/*
为引用起一个别名
 */
import 'dart:io' as myio;
import 'dart:math';
import 'mylib.dart' as lib;
void main() {
  var config = myio.File('config.txt');
  var contents;
  config.writeAsStringSync("Hello World");

  print(lib.greet("Mike"));

  var my = lib.MyClass();
  my.process();
}