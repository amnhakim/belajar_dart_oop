/* Initializer List
● Saat kita membuat Constructor atau Named Constructor, terdapat fitur yang bernama Initializer List
● Initializer List merupakan tempat dimana kita bisa mengubah field pada Object, sebelum block body Constructor
● Hal ini menjadi lebih mudah dibanding mengubah field di dalam block Constructor*/

class Customer {
  String firsName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName)
      : firsName = fullName.split(' ')[0],
        lastName = fullName.split(' ')[1] {
    print('Create new customer');
  }
}

void main() {
  var customer = Customer('Aiman Hakim');
  print(customer.fullName);
  print(customer.firsName);
  print(customer.lastName);
}
