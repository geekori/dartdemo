/*
调用不存在的方法

dynamic

noSuchMethod
 */
class MyClass {
  @override
  void noSuchMethod(Invocation invocation) {
    print('正在尝试调用不存在的成员：${invocation.memberName}');
  }
}
void main() {
  var my;// = MyClass();
  my = MyClass();
  my.abc();
  my.xyz = 20;

}