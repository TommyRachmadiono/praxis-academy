import 'dart:async';

void main() async{
  var f = await firstAsync();
  print(f);

  var s = await secondAsync();
  print(s);

  var t = await thirdAsync();
  print(t);

  print('done');
}

Future<String> firstAsync() async {
  await Future<String>.delayed(Duration(seconds: 2));
  return 'first';
}

Future<String> secondAsync() async {
  await Future<String>.delayed(Duration(seconds: 2));
  return 'second';
}

Future<String> thirdAsync() async {
  await Future<String>.delayed(Duration(seconds: 2));
  return 'third';
}