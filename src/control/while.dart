/*
while和do...while循环


 */
void main() {
  var i = 0;
  while(i < 10) {
    print(i);
    i+=2;
  }
  i = 0;
  while(i++ < 10) {
    print(i);
  }
  i = 200;
  do {
    print(i);
    i+=2;
  }while(i<10);
}