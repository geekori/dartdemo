/*
异步：处理Future

Dart：单线程

与JavaScript类似

Future
 */
import 'dart:io';
Future main() async {
  var config = File('content.txt');

  var contents;

  await config.writeAsString("hello world");
  contents = await config.readAsString();
  print(contents);

  contents = await config.readAsLines();
  print(contents.runtimeType.toString());
  print(contents.length);

  var f = config.readAsString();
  print(await f);


}