/*
抽象方法和抽象类

作用：
用来制定规范。

1. 没有函数体，用分号代替函数体
2. 抽象方法必须在抽象类中
3. 抽象类不能实例化，需要在子类中实现所有的抽象方法，而且子类不能是抽象类，才能实例化


 */
abstract class ParentClass {
  void doSomething();
}
class ChildClass1 extends ParentClass {
  void doSomething() {
    print("doSomething1");
  }
}
class ChildClass2 extends ParentClass {
  void doSomething() {
    print("doSomething2");
  }
}
void main() {
  ParentClass pc1 = ChildClass1();
  ParentClass pc2 = ChildClass2();

  pc1.doSomething();
  pc2.doSomething();

}