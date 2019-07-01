/*
元数据

描述数据的数据

@
 */
import 'dart:mirrors';
class MyClass {
  @deprecated
  void activate() {
    test();
  }
  void test() {

  }
}

class Todo {
  final String who;
  final String what;
  const Todo(this.who,this.what);
}
@Todo('Bill','Do something')
class Person {
  @Todo('person name','get name')
  String name = "Bill";
  @Todo('process','process something')
  void process() {

  }
}
void main() {
  MyClass my = MyClass();

  InstanceMirror im = reflect(new Person());

  ClassMirror classMirror = im.type;

  classMirror.metadata.forEach((metadata) {
    print(metadata.reflectee.who);
    print(metadata.reflectee.what);
  });

  classMirror.declarations.forEach((Symbol key, DeclarationMirror value) {
    // 获取方法的元数据
    if (value is MethodMirror) {
      value.metadata.forEach((metadata){
        if(metadata.reflectee is Todo) {
          print(metadata.reflectee.who);
          print(metadata.reflectee.what);
        }
      });
    }

    // 获取类成员变量的元数据
    if(value is VariableMirror) {
      value.metadata.forEach((metadata) {
        if(metadata.reflectee is Todo) {
          print(metadata.reflectee.who);
          print(metadata.reflectee.what);
        }
      });
    }
  });
}