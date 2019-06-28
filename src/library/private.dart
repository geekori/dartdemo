String greet(String name) {
  if(name == "") {
    name = _MyClass().getName();
  }
  return "Hello $name";
}

class _MyClass {
  String getName() {
    return "李宁";
  }
}