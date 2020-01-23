void main() {
  //Create generic for integers
  GenericClass<int> iOb = GenericClass(88);
  iOb.showType();

  int v = iOb.getOb();
  print("Value : $v");

  //Create generic for string
  GenericClass<String> strOb = GenericClass("Generic Test");
  strOb.showType();

  String str = strOb.getOb();
  print("Value : $str");
}

class GenericClass<T> {
  T ob;

  GenericClass(T o) {
    ob = o;
  }

  T getOb() {
    return ob;
  }

  showType() {
    print("Tipe dari T adalah ${T}");
  }

}