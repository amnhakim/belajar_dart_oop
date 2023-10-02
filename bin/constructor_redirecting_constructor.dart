/* Redirecting Constructor
● Saat membuat Named Constructor, kita bisa memanggil Default Constructor, atau istilahnya adalah melakukan Redirecting Constructor
● Cara membuat Redirecting Constructor adalah dengan menambahkan : (titik dua), lalu diikuti dengan memanggil this(parameter), dimana this() disini adalah dianggap mengakses Default Constructor
● Saat membuat Redirecting Constructor, kita tidak bisa menambahkan body pada Redirecting
Constructor*/

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Malaysia';

  Person(this.name, this.address);

  /* Redirecting Contructor */
  Person.withName(String name) : this(name, 'No address');
  Person.withAddress(String address) : this('No Name', address);
  Person.fromJakarta() : this.withAddress('Putrajaya');
  Person.withNoName() : this.withName('No Name');
}

void main() {
  var person = Person('Aiman', 'Banting');
  print(person.name);
  print(person.address);

  // Akses redirecting constructor
  var person2 = Person.withName('Hakim');
  print(person2.name);
  print(person2.address);

  var person3 = Person.withAddress('Dengkil');
  print(person3.name);
  print(person3.address);

  var person4 = Person.fromJakarta();
  print(person4.name);
  print(person4.address);

  var person5 = Person.withNoName();
  print(person5.name);
  print(person5.address);
}
