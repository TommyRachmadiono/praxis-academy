void main() {
  List<int> listAngka1 = [1, 10, 32, 12, 6, 4, 99, 75];
  List<int> listAngka2 = [11, 10, 22, 2, 4, 75];
  List<int> matchAngka = [];
  
  for (var element in listAngka2) {
    if (listAngka1.contains(element)) {
      matchAngka.add(element);
    }
    // print(element);
  }

  print(matchAngka);
}
