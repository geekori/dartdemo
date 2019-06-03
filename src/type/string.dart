/*
字符串
1. 字符串的基本定义
2. 多行字符串
3. 在字符串中使用变量
 */
void main() {
  var s1 = 'hello world';
  var s2 = "I love you.";
  var s3 = "It's your coat.";
  var s4 = 'This is your "coat"';
  print(s3);
  print(s4);
  var s5 = "It's my \"coat\"";
  print(s5);

  // 字符串连接
  var s6 = s1 + s2 + s3;
  print(s6);
  var s7 = "hello"  "world";
  print(s7);

  // 多行字符串

  var s8 = '''
     hello 
        world
     I love you.
  ''';
  var s9 = """
       hello 
        world
     I love you.
  """;
  print(s8);
  print(s9);

  // 原始格式的字符串
  var s10 = r'hello\nworld'; // raw string
  print(s10);

  const n1 = 50;
  const n2 = 30;
  var sum = n1 + n2;
  var mul = n1 * n2;

  var value = "$n1 + $n2 = $sum\n$n1 * $n2 = $mul";
  print(value);
}