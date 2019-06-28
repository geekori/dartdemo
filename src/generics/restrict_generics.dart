/*
限制泛型

extends

 */
class MyParent {

}
class MyClass<T extends MyParent> {
  String toString() => "Instance of 'MyClass<$T>";
}
class MyChild1 extends MyParent {

}
class MyChild2 {

}
void main() {
  MyClass<MyParent> my = MyClass();
  print(my.toString());

  MyClass<MyChild1> my1 = MyClass();
  print(my1.toString());

 // var my2 = MyClass<MyChild2>();

  var my3 = MyClass();
  print(my3.toString());

}