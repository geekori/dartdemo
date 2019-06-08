/*
break和continue

1. break和continue的用法之一是在switch
2. 用在循环中

break：用来终止本次循环，而且需要是最近的一次循环

 */

void main() {

  for(var x = 0;x<10;x++) {
    for (var i = 0; i < 10; i++) {
      if (i == 5) break;
      print(i);
    }
  }

  print('-----------');
  for (var i = 0; i < 10; i++) {
    if (i == 5) continue;
    print(i);
  }
}