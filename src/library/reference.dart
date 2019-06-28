/*
引用和创建程序库

1. 内建程序库
2. 定制的程序库

dart
 */
import 'dart:io';
import 'dart:math';
import 'mylib.dart';
void main() {
  var config = File('config.txt');
  var contents;
  config.writeAsStringSync("Hello World");
  contents = config.readAsStringSync();
  print(contents.runtimeType.toString());

  print('The file is ${contents.length} lines long.');

  print(greet("Bill"));
}