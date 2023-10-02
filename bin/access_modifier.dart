/*Access Modifier
● Secara default, saat kita membuat Field atau Method dalam sebuah class, maka semua Field dan Method tersebut bisa diakses oleh siapa saja
● Kadang-kadang kita ingin menyembunyikan Field atau Method
● Untuk menyembunyikan akses Field atau Method, kita bisa menambahkan _ (underscore) di awal Field atau Method nya
● Secara otomatis Field atau Method tersebut, hanya bisa di akses dari file yang sama, dan artinya tidak bisa diakses dari luar file 
*/

import 'data/product.dart';

void main(List<String> args) {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  print(product.id);
  print(product.name);
  // product._quantity = 100;
  // product._getQuantity();
  // error kerana _quantity adalah private hanya boleh diakses dlm file yg sama
}
