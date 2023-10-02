/*No Such Method
● NoSuchMethod merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendeteksi atau bereaksi ketika sebuah method yang tidak ada dipanggil
● NoSuchMethod hanya bisa digunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class
● https://api.dart.dev/stable/2.14.4/dart-core/Object/noSuchMethod 

NoSuchMethod untuk Abstract Class
● Salah satu penggunaan NoSuchMethod yang biasanya digunakan adalah sebagai implementasi Abstract Class
● Dengan menggunakan NoSuchMethod, kita tidak perlu mengimplementasikan method yang terdapat di abstract class lagi
*/

import 'data/repository.dart';

void main() {
  var repository = Repository('products');
  repository.id('1');
  repository.name('Laptop');
  repository.quantity(1000);
}
