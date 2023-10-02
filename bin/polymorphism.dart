/*Polymorphism
● Polymorphism berasal dari bahasa Yunani yang berarti banyak bentuk.
● Dalam OOP, Polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain
● Polymorphism erat hubungannya dengan Inheritance 
*/

class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void main() {
  Employee employee = Employee('Aiman');
  print(employee);

  employee = Manager('Hakim');
  print(employee);

  employee = VicePresident('Jailani');
  print(employee);
}
