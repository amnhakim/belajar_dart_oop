/* Equals Operator
● Untuk membandingkan dua buah object apakah sama atau tidak, biasanya kita menggunakan operator ==
● Secara default operator == adalah milik class Object, implementasinya jika kita menggunakan operator == milik class Object adalah akan melakukan pengecekan kesamaan object dari lokasi di memory
● Kadang-kadang, kita ingin mengimplementasikan logika untuk membandingkan object 


HashCode Getter
● HashCode Getter adalah representasi integer object kita, mirip toString yang merupakan representasi String, hashCode adalah representasi integer
● HashCode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet, dan lain-lain, karena cukup menggunakan hashCode method untuk mendapatkan identitas unique object kita
● Secara default hashCode akan mengembalikan nilai integer sesuai data di memory, namun kita bisa
meng-override nya jika kita ingin 

*/
import 'data/category.dart';

void main() {
  var category1 = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');

  print(category1 == category1);
  print(category1 == category2);

  print(category1.hashCode);
  print(category2.hashCode);
}
