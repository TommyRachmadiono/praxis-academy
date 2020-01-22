class Dog {
  String name;
  int age;

  // Dog(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  Dog(this.name, this.age);

  Dog.newBorn() {
    name = 'Newborn Dog';
    age = 0;
  }

  bark() {
    print('woooff');
  }
}