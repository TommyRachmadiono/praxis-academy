import 'package:asynchronus/asynchronus.dart' as asynchronus;
import 'dart:async';

void main(List<String> arguments) async {
  print(await five());
  var x = await four();
  print(x);
  print('getting employee. . .');
  var e = await getEmployee(33);
  print("Employee ${e.firstName} ${e.lastName} with id# ${e.id}");
}

Future<int> four() async {
  int four = await Future.delayed(Duration(seconds:5),()=> 4 );
  return four;
}

five() async{
  int five = await Future.delayed(Duration(seconds: 2), () => 55);
  return await five;
}

Future<Employee> getEmployee(int id) async {
  await Future<Employee>.delayed(Duration(seconds: 2));

  var newEmployee = Employee(id, "Tommy", "rachmadiono");
  return newEmployee;
}

class Employee {
  int id;
  String firstName;
  String lastName;

  Employee(this.id, this.firstName, this.lastName);
}
