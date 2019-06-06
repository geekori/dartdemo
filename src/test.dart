void main() {
  var halogens = {'a', 'a', 'bromine', 'iodine', 'astatine'};
  var bb = ['bbb'];
  halogens.removeWhere((s) {
    if(s == 'bromine') {
      return true;
     }
     return false;
  });
  halogens.addAll(bb);
  print(halogens);


}

