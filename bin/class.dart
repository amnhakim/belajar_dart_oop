class Person {
  /* Field / Attribute */
  String name = 'Guest';
  String? address;
  final String country = 'Malaysia';

  /* Method / Function */
  void sayHello(String paramName) {
    print('Hello $paramName, My name is $name');
  }

  void hello([String? paramName = '']) {
    print('Hello $paramName, My Name is $name');
  }
}

/* Extension Method */
extension SayGoodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print('Good bye $paramName, from $name');
  }
}

void main() {
  /* Object */
  var person1 = Person(); // instantiation class

  /* Access field in object*/
  person1.name = 'Aiman Hakim';
  person1.address = 'Jalan Intan Kanan';
  // person1.country = "Malaysia"; // error -> tidak bisa ubah final field

  print(person1.name);
  print(person1.address);
  print(person1.country);

  /* Access method in object */
  person1.sayHello('Aiman');
  person1.hello();
  person1.sayGoodBye('izzatul');

  Person person2 = Person();
  print(person2);
}
