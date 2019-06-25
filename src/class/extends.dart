/*
类的继承和重写方法


 */
class MyParent {
  void process() {
    print("parent process");
  }
}
class MyChild extends MyParent {
  @override
  void process1() {
    print("child process");
  }
}
void main() {
  var my = MyChild();
  my.process();
}