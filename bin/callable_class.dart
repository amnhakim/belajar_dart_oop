/*Callable Class
● Callable Class merupakan class yang bisa dipanggil seperti function
● Untuk membuat Callable Class, kita perlu menambahkan sebuah method bernama call() di class tersebut
● Parameter dan Return Value dari Method tersebut bisa disesuaikan sesuai keinginan kita
● Setelah membuat objectnya, kita bisa langsung memanggil method call() tersebut menggunakan nama objectnya saja 
*/

class Sum {
  int number1;
  int number2;

  Sum(this.number1, this.number2);

  int call() {
    return number1 + number2;
  }
}

void main() {
  var sum = Sum(10, 30);
  print(sum.call());
  print(sum());
}
