/* Constructor
● Saat kita membuat Object, maka kita seperti memanggil sebuah method, karena kita menggunakan kurung ()
● Di dalam class, kita bisa membuat constructor, constructor adalah method yang akan dipanggil saat pertama kali Object dibuat.
● Mirip seperti di method, kita bisa memberi parameter pada constructor
● Nama constructor harus sama dengan nama class, dan tidak membutuhkan kata kunci void atau return value
● Ketika kita menambahkan Constructor pada class, maka saat membuat Object baru, kita wajib mengikuti parameter yang ada di Constructor*/

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Malaysia';

  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }

  void sayHello(String paramName) {
    print('Hello $paramName, My Name is $name');
  }
}

void main() {
  var person = Person('Aiman', 'Banting');
  print(person.name);
  print(person.address);
  person.sayHello('Hakim');
}
