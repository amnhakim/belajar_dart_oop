/* Variable Shadowing
● Variable shadowing adalah kejadian ketika kita membuat nama variable dengan nama yang sama di scope yang menutupi variable dengan nama yang sama di scope diatasnya
● Ini biasa terjadi seperti kita membuat nama parameter di method sama dengan nama field di class
● Saat terjadi variable shadowing, maka secara otomatis variable di scope diatasnya tidak bisa diakses 
*/

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Malaysia';

  Person(String name, String address) {
    name = name;
    address = address;
  }
}

void main() {
  var person = Person('Aiman', 'Banting');
  print(person.name);
  print(person.address);
}
