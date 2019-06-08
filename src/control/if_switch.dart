/*
条件控制语句（if和switch）

if(condition) {
}

if(condition) {
} else {
}

if(condition1) {
} else if(condition2) {
} else if(condition3) {
} else {
}

 */
void main() {
  var i = 10;
  if(i < 10) {
    print('i < 10');
  } else if(i == 10) {
    print('i == 10');
  } else {
    print('i > 10');
  }
 /* if(i) {

  }*/

 /*
 switch
 1. 标准的用法
 2. 多个条件值使用相同的代码，如何处理
 3. 如何连续执行多个分支
  */
 var command = 'open';
 switch(command) {
   case 'closed':
     print('关闭');
     break;
   case 'open':
     print('打开');
     break;
   case 'new':
     print('新建');
     break;
   default:
     print('others');

 }

 // 多个条件值使用相同的代码
  // 例如，有n个条件值的代码相同，那么可以将前n-1个分支
  // 的代码完全清除。
  //  如果某一个分支包含代码，那么必须在这个分支代码的最后
  //  加上中断语句：break、continue、throw、return
  command = 'new';
  switch(command) {
    case 'open':
    case 'new':
      print('操作文件');
      break;
    case 'test':
      print('测试');
      break;
    default:
      print('默认操作');
  }

  // 如何连续执行多个分支
  command = 'closed';
  switch(command) {
    closed_label:
    case 'closed':
      print('closed');
      continue new_label;
    open_label:
    case 'open':
      print('open');
      continue new_label;
    new_label:
    case 'new':
      print('new');
      continue closed_label;
    default:
      print('others');

  }
}
