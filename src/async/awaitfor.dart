/*
await for语句
 */
import "dart:io";
Future main() async {
  var dir = ".";
  if (await FileSystemEntity.isDirectory(dir)) {
    final startingDir = Directory(dir);
    await for (var entity in startingDir.list(recursive:true)){
      if (entity is File) {
        print(entity);
      }
    }
  }
}