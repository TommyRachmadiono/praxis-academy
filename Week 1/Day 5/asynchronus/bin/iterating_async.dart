import 'dart:async';
import 'dart:math';

void main() async {
  // await Future.forEach([1,2,3,4,5,6,7,8,9,10], (int n) => 
  // isPrimeNumber(n)
  // .then((x) => print("${n}${x ? " is" : " is not"} a prime number")));

  Future.wait([getRandomNumber(), getRandomNumber(), getRandomNumber()])
  .then((List<int> result) => getSmallestNumberInList(result));
}

Future<bool> isPrimeNumber(int number) async {
  if (number == 1)
    return false;
  if (number == 2)
    return true;

  double mysqrt = sqrt(number);
  int limit = mysqrt.ceil();

  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) return false;
  }

  return true;
}

Future<int> getRandomNumber() async {
  var random = new Random();
  return random.nextInt(100);
}

getSmallestNumberInList(List<int> list) {
  print("all numbers are :");
  list.forEach((element) => print(element));
  list.sort();
  int smallest = list.first;
  print("The smallest number is $smallest");
}