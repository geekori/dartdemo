/*
集合（Set）

1. 集合中的元素是不重复的。 1,2,3,4（集合）   1,1,2,3,4（非集合）
2. 集合中的元素与顺序无关， 1,2,3 =  3,2,1
 */

void main() {
  var set1 = {1,2,2,3,4,5};
  print(set1);

  // 空集合
  var set2 = <String>{};
  set2.add('hello');
  set2.add('world');

  print(set2);

  var set3 = {'abc'};
  set3.addAll(set2);
  print(set3);

  print(set3.length);

  print(set3.contains('abcd'));

  set3.remove("world");
  print(set3);
  set3.removeWhere((s){
    if(s == 'abc') {
      return true;
    } else
    {
        return false;
    }
  });
  print(set3);

  final constantSet = const {
    'aaa',
    'bbb'
  };

  //constantSet.add('ccc');
}