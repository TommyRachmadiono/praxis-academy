import 'dart:math';

void main() {
  var list = [1, 2, 3, 5, 10, 23, 7, 0];

// Maximum and Minimum Values From ARRAY / LIST
  getMinMaxArrayValues(list);
  print(list.reduce(max));
  print(list.reduce(min));
}

getMinMaxArrayValues(List listItem) {
  listItem.sort();
  print("Min : ${listItem[0]}");
  print("Max : ${listItem.last}");
}
