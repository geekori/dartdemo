/*
布尔类型

bool
true
false
 */

void main() {
  var s = "";
  if(s.isEmpty) {
    print('s是空串');
  }
  var n = 20;
  if(n == 20) {
    print("n=20");
  }

  var m;
  if(m == null) {
    print("m = $m");
  }

  var x = 0/0;
  print(x);
  if(x.isNaN) {
    print("x is $x");
  }

  var b = true;
  print(b);

}