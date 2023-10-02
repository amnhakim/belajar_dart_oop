/*Typedef
● Typedef merupakan fitur dimana kita bisa membuat alias untuk tipe data lainnya
● Ini cocok ketika misal terdapat class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
● Atau kita bisa mempersingkat nama class yang panjang dengan alias 
*/

import 'data/sum.dart';

void main() {
  var sum = Sum(10, 20);
  print(sum());

  var jumlah = Jumlah(5, 3);
  print(jumlah());

  var total = Total(5, 10);
  print(total());
}
