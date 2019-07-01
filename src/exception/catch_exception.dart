// 捕捉异常
// 系统抛出
// 主动抛出
import 'dart:io';
void distanceTo() => throw ArgumentError('参数错误');

void main() {
  /*var x;
  x = "123";
  print(x / 30);*/
  try {
    distanceTo();
  } on FormatException {
    print("FormatException");
  } on FileSystemException {
    print('FileSystemException');
  } on ArgumentError catch(e){
    print('ArgumentError:' + e.message);
    rethrow;
  } catch(e,s) {
    print(e);

  }
  finally {
    print("finally");
  }
}

// finally
/*
try
{
}
on ... catch(e) {
}
finally {

}
 */