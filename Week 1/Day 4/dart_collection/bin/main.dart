import 'package:dart_collection/dart_collection.dart' as dart_collection;

void main(List<String> arguments) {
  // print('Hello world: ${dart_collection.calculate()}!');

  List kucing = ['kucinng', 'meong', 'asd'];
  Set ayam = {'kampung', 'mcd', 'kfc'};
  Map buku = {
    'buku1': 'ini buku 1',
    'buku1 gambar': 'ini buku 1 gambar',
    'buku1 bro': 'ini buku 1 bro',
  };

  Map<String, String> mapA = {'name':'Tom','Id': '12'}; 
  print('Map : $mapA');

  List<String> logTypes = new List();
  // logTypes.add(1);
  logTypes.add("WARNING");
  logTypes.add("INFO");

   print("Default implementation  :${logTypes.runtimeType}");  
  for (String log in logTypes) {
    print(log);
  }
  // print('$kucing');
  // print('$ayam');
  // print('$buku');
}
