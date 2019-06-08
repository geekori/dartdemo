/*
函数类型
 */
typedef Calc = int Function(int a,int b);

int calc(Calc f) {
  return f(20,30) + f(30,40);
}

void main() {
  var fun = (String msg) => 'hello ' + msg;
  print(fun("Bill"));
  print(fun('Mike'));

  print(fun.runtimeType.toString());

  print(calc((a,b)=>a+b));
  print(calc((a,b)=>a*b));

  var list = [1,2,3,4,5];
  void printElement(int value) {
    print(value);
  }
  list.forEach(printElement);
}