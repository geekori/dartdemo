// 构造方法
// 构造方法：也就是说创建类实例的过程中调用的方法
class User {
  var name;
  double salary;
  int age;

/*
  User(String name,double salary,int age) {
    this.name = name;
    this.salary = salary;
    this.age = age;
  }*/
  //User(this.name,this.salary,this.age);
  // 初始化列表
  User(name, double salary, age)
      :
        name = name,
        salary = salary,
        age= age;

  /*User.fromMap(Map map) {
    name = map['name'];
    salary = map['salary'];
    age = map['age'];
  }*/
  User.fromMap(Map map) :this(map['name'], map['salary'], map['age']);
}

class ConstClass {
  final int x,y;
  const ConstClass(this.x,this.y);
}
class Product {
  final String name;

  static final Map<String, Product> cache = <String,Product>{};
  factory Product(String name) {
    if(cache.containsKey(name)) {
      return cache[name];
    } else {
      final product = Product._internal(name);
      cache[name] = product;
      return product;
    }
  }
  Product._internal(this.name);
  void log(String msg) {
    print(msg);
  }
}
void main() {
  var user = new User("John",3000,30);
  print(user.name);
  User user1 = User.fromMap({'name':'Mary','salary':1234.5,'age':40});
  print(user1.name);
  print(user1.salary);
  print(user1.age);

  /*
  1. 构造方法的重定向，一个构造方法调用了另外一个构造方法（通过this调用）
  2. 常量构造方法
  3. factory构造方法
   */

  var c1 = const ConstClass(10, 10);
  var c2 = const ConstClass(10, 10);
  print(identical(c1, c2));

  // singleton模式（单件设计模式）
  var product1 = Product('iphone');
  var product2 = Product('iphone');
  print(identical(product1, product2));

}