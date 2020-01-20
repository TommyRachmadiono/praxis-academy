import 'package:hello_dart/hello_dart.dart' as hello_dart;

main(List<String> arguments) {
  controlFlowStatement();
  variableWithDataType();
  print('Hello world: ${hello_dart.calculate()}!');

  var number = 12;
  printNumber(number);
  
}

printNumber (int numberHere) {
  print('The number is $numberHere');
}

variableWithDataType() {
    // membuat variabel dengan tipe data
    String nama = "Tommy R";
    int umur = 23;
    double tinggi = 159.43;
    bool isMenikah = false;

    // membuat veriabel dengan kata kunci var
    var alamat = "Surabaya, Indonesia";

    // mencetak variabel
    print("Nama saya $nama. Umur $umur tahun. Tinggi sekitar $tinggi cm.");
    print("Menikah: $isMenikah");
    print("Alamat: $alamat");
}

controlFlowStatement() {
  
  var name = 'Voyager I';
  var year = 1999;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['benda 1', 'ini kedua', 'tiga'],
    'url': '//path/to/saturn.jpg'
  };

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  // if (year >= 2001) {
  //   print('21st century');
  // } else if (year >= 1901) {
  //   print('20th century');
  // }

  // for (var object in flybyObjects) {
  //   print(object);
  // }

  // for (int month = 1; month <= 12; month++) {
  //   print(month);
  // }

  while (year < 2020) {
    year+=1;
    // print(year);
  }

  // print(image);
  // print(flybyObjects[0]);
}