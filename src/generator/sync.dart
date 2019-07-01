/*
同步产生器

产生器（Generator）：动态的数据集合

产生器是一个函数，但并不返回值，而是通过yield返回可迭代的数据


List、Set和Map都是静态数据集合


 */
import 'dart:math';

void main() {
  var random = new Random();
  // 同步产生器
  Iterable<int> num(int max) sync* {
    int k = random.nextInt(10); // 参数0到10的随机整数
    int n = 11 + random.nextInt(max);

    while(k < n) {
      yield (k *k) + 1;
      k++;
    }
  }

  for(int value in num(20)) {
    print(value);
  }

  var result = num(20);
  print(result.runtimeType.toString());
  print(result.toList());
  print(result.toSet());
}