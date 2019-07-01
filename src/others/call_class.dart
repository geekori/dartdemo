// 像调用函数一样调用类
// call
class MyClass {
  call(String a,String b, String c) =>'$a $b $c';
}
void main() {
  var my = MyClass();
  var out = my("Hi", "Here", "You");
  print(out);
}