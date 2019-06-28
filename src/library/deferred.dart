/*
惰性装载程序库
*/
import 'mylib.dart' deferred as lib;
Future main() async {
  await lib.loadLibrary();
  print(lib.greet("John"));
  lib.MyClass().process();
}