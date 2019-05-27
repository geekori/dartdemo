/*
Dart的程序结构
 */

printValue(int n,String s) {
  print('数值 $n, 字符串：$s');
}

void main() {
  var number = 315;
  print(number.runtimeType.toString());
  printValue(number, "Hello world");
  dynamic name = "abc";
  print(name);
  name = 30;
  print(name);

  final String nickname = "Bill";
  //nickname = "aa";

  var list = [1,2,3,4,5,6];
  for(var i =0; i < list.length;i++){
    print(list[i]);
  }

}