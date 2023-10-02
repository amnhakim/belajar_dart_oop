/* Named Constructor
● Constructor hanya bisa dibuat satu saja, mirip seperti function atau method, kita tidak bisa membuat beberapa dengan nama yang sama.
● Namun terdapat fitur yang bernama Named Constructor, yaitu Constructor dengan nama yang berbeda
● Dengan menggunakan Named Constructor, kita bisa membuat Constructor lebih dari satu, namun wajib menggunakan nama yang berbeda
● Untuk membuatnya kita bisa menggunakan nama Class.namaConstructor nya
● Named Constructor bisa lebih dari satu
*/

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Malaysia';

  Person(this.name, this.address);
  Person.withName(this.name);
  Person.withAddress(this.address);
}

void main() {
  var person = Person('Aiman', 'Banting');
  print(person.name);
  print(person.address);

  // Akses named constructor
  var personName = Person.withName('Hakim');
  print(personName.name);
  print(personName.address);

  var personAddress = Person.withAddress('Dengkil');
  print(personAddress.name);
  print(personAddress.address);
}
