/*
可选参数

1. 位置可选参数
   [...]
   缺点：
   (1)如果参数太多，会造成混淆
   (2)必须按顺序指定参数值，例如，如果要指定最后一个参数值，必须指定前面所有的参数值
2. 命名可选参数
   {...}
   优点：
   (1)在函数的调用代码中，可以清楚地根据参数名分辨参数的作用
   (2)不需要按顺序指定参数值

   规则：
   如果位置参数与命名参数混合使用，位置参数需要在前面定义，
   在调用时，命名参数需要在位置参数后面。

   但多个命名参数的位置可以调换。
3. 参数默认值

 */
int add(int a,int b,[int c,int d = 20]) {
  if(c == null) {
    c = 0;
  }
  if(d == null) {
    d = 0;
  }
  return a + b + c + d;
}
int mul(int a, int b, {int c = 123, int d}) {
  var result = a * b;
  if(c != null) {
    result *= c;
  }
  if(d != null) {
    result *= d;
  }
  return result;

}
void main() {
  print(add(1,2,3));
  print(mul(4,5,d:30,c:12));
}