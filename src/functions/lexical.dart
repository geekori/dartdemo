/*
作用域与返回值

{
作用域
}
子作用域中的变量会覆盖父作用域中的同名的变量

返回值

如果函数没有指定返回值的数据类型，可以直接调用return返回（null）
，或在return后面跟任何值。

如果函数的返回类型是void，就标识了函数肯定没有返回值。
return
 */

test() {
  return 20;
}
void test1() {
  return;
}
var name = "Bill";
void main() {
  var name = "Mike";
  print(name);
  void func1() {
    var name = "John";
    var x = 20;
    print(name);
    print(x);
    void func2() {
      print(x);
    }
    func2();
  }
  //print(x);
  func1();
  int xyz = 40;
  if(true) {
    int xyz = 30;
    print(xyz);
  }
  print(xyz);
  print(test());

}