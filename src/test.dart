

void main() {
  // 必须被初始化
  final username = '李宁';
  //username = '王军';

  const password = "1234";
  //password = '4321';
  /*
  都只能设置一次，区别
  const：编译时常量，并不是指编译时检测常量，而是编译时
  计算常量
  const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

   */
  var foo = const [1,2,3];
  final bar = const ["a","b"];
  const a = [5,6];  // var a = const[]
 //  a[1] = 4; error

  print(foo);
  foo = const[5,6,7];
  print(foo[0]);
  // bar = ["acc","dd"];
  print(bar);
}

