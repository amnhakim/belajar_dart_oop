/* Interface
● Sebelumnya kita sudah tahu bahwa abstract class bisa kita gunakan sebagai kontrak untuk class child nya.
● Namun sebenarnya yang lebih tepat untuk kontrak adalah Interface
● Jangan salah sangka bahwa Interface disini bukanlah User Interface
● Interface mirip seperti abstract class, yang membedakan adalah di Interface, semua method otomatis abstract
● Untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melainkan implements 

Membuat Interface
● Hal yang sangat berbeda di Dart dan bahasa pemrograman Java, PHP dan lain-lain adalah saat kita membuat Interface
● Interface di Dart bisa diambil dari class apapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
● Interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
● Maka secara otomatis, kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interface nya, bukan class nya
● Anggap saja Interface adalah kontrak dari pembuatan Class

Multiple Interface Inheritance
● Hal yang membedakan ketika kita melakukan pewarisan adalah, kita hanya bisa melakukan extends terhadap satu class, namun kita bisa melakukan implements terhadap beberapa class
● Hal ini dikarenakan sebenarnya implements bukanlah melakukan pewarisan, melainkan mendeklarasikan ulang seluruh method dan field
● Anggap saja ini seperti membuat class yang berbeda, namun memiliki field dan method yang sama
● Untuk melakukan multiple implements, kita bisa gunakan pemisah tanda koma antar class yang kita implements
*/

import 'data/interface_car.dart';

void main() {
  var avanza = Avanza();
  avanza.name = 'Avanza';
  print(avanza.name);
  avanza.drive();
  print(avanza.getTier());
  print(avanza.getBrand());
}
