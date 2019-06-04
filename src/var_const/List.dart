/*
列表

一组值的集合

1. 列表的基本操作
（1）定义列表
（2）读取列表中的每一个元素值
（3）添加、删除和修改元素值

2. 在列表中使用条件语句和循环语句
 */
void main() {
  var list = [1,2,3];
  print(list);
  list[1] = 100;
  print(list[1]);

  list.add(1234);
  print(list.length);
  print(list);
  list.removeAt(0);
  print(list);

  var list1;
  // spread operator
  var list2 = [0,...?list1];
  print(list2);
  var b = false;
  var names = [
    'Bill',
     'Mike',
     if (b) 'John'
  ];
  print(names);

  var list3 = ['a','b','c'];
  var list4 = [
    '#xx',
    for(var c in list3) '#$c'
  ];
  print(list4);
}