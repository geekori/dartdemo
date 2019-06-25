/*
枚举类型
 */
enum Color{red,green,blue }

void main() {
  print(Color.red.index);
  print(Color.green.index);
  print(Color.blue.index);

  List<Color> colors = Color.values;
  print(colors);
  print(colors[1] == Color.green);

  var c = Color.red;
  switch(c) {
    case Color.red:
      print('Red');
      break;
    case Color.green:
      print('Green');
      break;
    default:
      print(c);
  }
}