/* Getter dan Setter
● Proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan Getter dan Setter method.
● Getter adalah function yang dibuat untuk mengambil data field
● Setter ada function untuk mengubah data field
● Untuk Getter, kita bisa menggunakan kata kunci get
● Untuk Setter, kita bisa menggunakan kata kunci set 

Getter dan Setter Yang Tidak Perlu
● Dalam bahasa pemrograman seperti Java atau C#, penggunaan Getter dan Setter sudah menjadi sesuatu yang sangat lumrah, hal ini karena mengakses Field dan Method sangatlah berbeda, oleh karena itu dari awal selalu dibuat Getter dan Setter
● Di Dart, hal ini tidak berlaku, jika isi Getter dan Setter hanya melakukan redirect data ke Field, disarankan tidak perlu menggunakan Getter dan Setter, cukup langsung saja menggunakan Field
● Hal ini dikarenakan dalam Dart, jika kedepannya kita ingin menambah Getter dan Setter, kita bisa tambahkan, tanpa harus mengubah kode client
● https://dart-lang.github.io/linter/lints/unnecessary_getters_setters.html
*/

import 'data/encapsulation_rectangle.dart';

void main() {
  var rectangle = Rectangle();
  rectangle.width = -1;
  print(rectangle.width);

  rectangle.length = -1;
  print(rectangle.length);
}
