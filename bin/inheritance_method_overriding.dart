/*Method Overriding
● Method overriding adalah kemampuan mendeklarasikan ulang method di child class, yang sudah ada di parent class
● Saat kita melakukan proses overriding tersebut, secara otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
● Saat melakukan method overriding, kita harus pastikan deklarasi method nya harus sama dengan di parent class nya 
*/

class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  @override
  void sayHello(String name) {
    print('Hello $name, my name is Vice President ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = 'Aiman';
  manager.sayHello('Aiman');

  var vp = VicePresident();
  vp.name = 'Hakim';
  vp.sayHello('Hakim');
}
