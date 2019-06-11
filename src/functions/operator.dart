// 运算符
/*
1. 算术运算符
+、-、*、/ -\ ~/（除法，返回一个整数结果）、%
++、--
2. 关系运算符
3. 类型检测运算符
4. 赋值运算符
5. 逻辑运算符
6. 位操作运算符
7. 条件表达式
8. 级联运算符
 */
void main() {
  print(4.9/1.8);
  print(4.9~/1.8);  // 舍去所有的小数部分
  var x = 20.5;
  print(--x);
  print(x--);
  print(x);

  // 2. 关系运算符
  /*
  ==  !=  >  < >= <=
   */
  // 类型检测运算符
  /*
  as:类型转换
  (obj as Person).firstName = "abcd"

  is 检测变量的类型，如果变量是某一个特定的类型，返回true
  is! 检测变量的类型，如果变量是某一个特定的类型，返回false

   */

  var a = 20;
  var b = 20.3;
  var c = "abcd";
  if(a is int) {
    print('a是int类型');
  }
  if(b is double) {
    print('b是double类型');
  }
  if(c is String) {
    print('c是String类型');
  }

  // 赋值运算符
  /*
  =、 -=（a = a - b，a-=b)、+=、/=、~/=

  a ??= b，如果a是null，将b赋给a，否则a保持原值
   */

  var name = "Bill";
  var age;
  name ??= "Mike";
  print(name);
  age ??= 30;
  print(age);

  // 5. 逻辑运算符
  // !expr   ||    &&

  // 6. 位操作运算符
  // &（按位与）   |（按位或）   ^（异或）   ~expr（按位非）
  // <<（左移）  >> （右移）

  var value = 0x22;      // 0010 0010

  final bitmask = 0x0f;  // 0000 1111
  print(value & bitmask);  // 2
  print(value | bitmask);  // 0010 1111
  print(value << 2);     // 1000 1000  128 + 8 = 136

  // 7. 条件表达式
  // condition? expr1:expr2
  // expr1 ?? expr2  当expr1位非null，返回expr1的值，否则返回expr2
  var v = (value == 0x23)?'value1':'value2';
  print(v);

  var xx;
  print(xx??'abc');


  // 8. 级联运算符
  // ..
  // obj..text = "abc"..process()




}