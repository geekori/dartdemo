/*
泛型基础

1. 解决类型安全（数据类型的校验）
2. 减少代码冗余

泛型本质上将数据类型作为参数

 */
// 减少代码冗余
abstract class ObjectCache {
  Object getKey(String key);
  void setKey(String key,Object value);
}

abstract class StringCache {
  String getKey(String key);
  void setKey(String key, String value);
}

// 使用泛型
abstract class Cache<T> {
  T getKey(String key);
  void setKey(String key, T value);
}

class MyCache<T> extends Cache<T> {
  Map<String,T> map;
  MyCache() {
    map = Map<String,T>();
  }
  @override
  T getKey(String key) {
    return map[key];
  }
  @override
  void setKey(String key, T value) {
    map[key] = value;
  }
}

void main() {
  var strCache = MyCache<String>();
  strCache.setKey("name","Mike");
  print(strCache.getKey("name"));

  var intCache = MyCache<int>();
  intCache.setKey("age", 20);
  print(intCache.getKey("age"));

  // 类型安全性
  var names = List();
  names.add("Bill");
  names.add("Mike");
  names.add(123);
  print(names);

  var number = List();
  number.add(123);
  number.add(543);
  number.add("abc");

  var names1 = List<String>();

  names1.add("abc");
  //names1.add(333);

}