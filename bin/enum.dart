/*Enum
● Enum merupakan fitur untuk membuat tipe data yang sudah jelas nilainya
● Untuk membuat Enum, kita bisa menggunakan kata kunci enum 
*/

enum CustomerLevel { regular, premium, vip }

class Customer {
  String name;
  CustomerLevel customerLevel;

  Customer(this.name, this.customerLevel);
}

void main() {
  var customer = Customer('Aiman', CustomerLevel.premium);
  print(customer.name);
  print(customer.customerLevel);

  print(CustomerLevel.values);
}
