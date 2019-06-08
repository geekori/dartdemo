/*
匿名函数

1. 没有名字的函数
2. 不需要指定返回值类型

([Type1]param1,[Type2]param2...) {

}

([Type1]param1,[Type2]param2...)=>single code
 */
void main() {
  var f1 = (a,b,c) => a+b+c;
  print(f1(1,2,3));

  var list = ['特斯拉','丰田','宝马'];
  list.forEach((String value) {
    print(value);
    print("<" + value + ">");
  }
    );
}