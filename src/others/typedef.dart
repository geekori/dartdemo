/*
自定义函数类型

typedef 只支持函数类型
 */
class MyClass1 {
  Function func;
  MyClass1(String f(int n, String s)) {
    func = f;
  }
}
String myfunc(int n,String s) {
  return n.toString() + s;
}

typedef FuncType = String Function(int n, String);
class MyClass2 {
  FuncType func;
  MyClass2(FuncType f) {
    func = f;
  }
}
void main() {
  MyClass1 my1 = MyClass1(myfunc);
  print(my1.func(20,"hello"));

  MyClass2 my2 = MyClass2(myfunc);
  print(my2.func(30,"world"));
}