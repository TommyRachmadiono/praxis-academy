
void main() {
  List<int> listAngka = [1, 2, 3, 3, 6, 8];
  int angka = 3;

  if (angka >= listAngka.length) {
    print('maximal input : ${listAngka.length-1}');
  } else {
  listAngka[angka] == angka ? print(angka) : print(-1);
  }
}