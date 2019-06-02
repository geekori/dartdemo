/*
常量和常量列表

final
const
 */


void main() {
  final username = '李宁';
  const password = '1234';

  // username = "abc";   error
  // password = "1234";  error

  /*

  final和const的区别

  const：编译时常量
  在编译时计算常量的值


   */

  const n = 20;
  final x1 = n *2 + 20;
  const x2 = 60;//n * 2 + 20;
  const x3 = x2 * 2;


  var values = const [1,2,3];
  print(values);
  print(values[1]);
  //values[1] = 4;

  final values1 = const["a","b"];
  //values1 = ["b","c"];
  //values1[1] = "x";

  const values2 = [5,6];
 // values2[1] = 4;




}

