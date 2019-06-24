/*
隐式接口

implements
 */
abstract class Person {
  final _name;
  Person(this._name);

  String greet(String who) => 'Hello, $who. I am $_name';

}

class Person1 {
  final _name;
  Person1(this._name);

  String greet1(String who) => '你好, $who. 我是 $_name';

}

class MyChild implements Person,Person1 {
  get _name => '';
  String greet(String who) =>'Hi $who';
  String greet1(String who) => '嗨 $who';
}
String greet(Person1 person1) =>person1.greet1('bill');
void main() {
    print(greet(Person1('Mike')));
    print(greet(MyChild()));

    var child = MyChild();
    print(child.greet("John"));
}