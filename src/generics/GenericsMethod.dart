/*
泛型方法
 */
class MyClass {
  T add<T>(List<T> ts, T value) {
    ts.add(value);
    return value;
  }
}
void main() {
  var my = MyClass();
  List<int> values1 = List();
  print(my.add<int>(values1,20));
  print(my.add<int>(values1,39));
  print(values1);

  List<String> values2 = List();
  my.add<String>(values2,"xyz");
  my.add<String>(values2,"abc");
  print(values2);

  my.add(values1, 45);
  my.add(values2, "abcd");
  print(values1);
  print(values2);

  // my.add(values1, "abcd");  error


}