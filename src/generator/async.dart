/*
异步产生器
 */
import 'dart:math';

Future main() async{
  var random = new Random();
  // 同步产生器
  Stream<int> num(int max) async* {
    int k = random.nextInt(10); // 参数0到10的随机整数
    int n = 11 + random.nextInt(max);

    while(k < n) {
      yield (k *k) + 1;
      k++;
    }
  }

  var result = num(20);
  print(result.runtimeType.toString());
  /*
  result.forEach((int value) {
    print(value);
  });*/
/*
  var list = result.toList();
  print(list.runtimeType);
  for(var value in await list) {
    print(value);
  }**/

  var first = result.first;
  print(first.runtimeType);
  print(await first);
}