void main() {
  List<int> listAngka = [1, 10, 32, 12, 6, 4, 99, 75];
  List<int> angkaSort = [];
  print('List angka : $listAngka');

  listAngka.sort();
  angkaSort.addAll(listAngka);

  print('Insert sort : $angkaSort');
}
