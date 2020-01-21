import 'package:day_2/day_2.dart' as day_2;

void main(List<String> arguments) {
  print('Hello world: ${day_2.calculate()}!');

  var angka = 1;
  var hasil = (angka == 2) ? 'benar' : 'salah';
  print(hasil);

  var s2 = """This is also a
multi-line string.""";
  print(s2);

  var fullName = '';
  assert(fullName.isEmpty);
}
