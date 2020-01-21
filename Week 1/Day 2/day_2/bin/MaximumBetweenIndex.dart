void main() {
  List<int> listAngka = [1, 10, 32, 12, 6, 4, 99, 75];

  int maxVal = 0;
  int index1 = listAngka[0];
  int index2 = listAngka[3];

  if (index1 == index2) {
    print('Equals');
  } else {
    index1 > index2 ? print('Max index ke : ${listAngka.indexOf(index1)}') : print('Max index ke : ${listAngka.indexOf(index2)}');
    // for (var i = 0; i < listAngka.length; i++) {
      
    // }
  }
}