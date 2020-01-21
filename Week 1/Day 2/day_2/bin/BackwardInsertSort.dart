void main() {
  List<int> listAngka = [1, 10, 32, 12, 6, 4, 99, 75];
  List<int> angkaReverse = [];
  print('list angka : $listAngka');

  listAngka.sort();
  angkaReverse.addAll(listAngka.reversed);

  print('Reverse sort : $angkaReverse');
}
