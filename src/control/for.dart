/*
for循环语句

for(初始化;条件;用于控制增量或减量) {
}

for in


 */
void main() {
  for(var i = 0; i < 10;i+=2) {
    print(i);
  }

  var message = StringBuffer('I love you');
  for(var i = 0; i < 10;i++) {
    message.write('!');
  }
  print(message);

  // for-in
  var values = [1,2,3,4,5,6,7,8];
  for(var value in values) {
    print(value);
  }

  var set = {1,2,3,4};
  for(var value in set) {
      print(value);
  }
  var map_values = {'name':'Bill','age':20};
  for(var key in map_values.keys) {
    print(key + ':' + map_values[key].toString());
  }

  values.forEach((s) {
    print("<" + s.toString() + ">");
  });

  map_values.forEach((key,value) {
    print("[" + key + "]=" + value.toString());
  });

}