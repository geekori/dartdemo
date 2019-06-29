/*
定义异步函数
 */

Future greet(String name) async {
  return "Hello $name";
}
Future<num> add(num a, num b) async {
  return a + b;
}
Future main() async {
  print(greet("bill"));
  print(await greet("Mike"));

  print(add(4,5.3));
  print(await add(4,5.3));
}