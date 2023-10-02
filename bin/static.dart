/*Static
● Static merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat object nya
● Saat kita membuat field atau method yang static, artinya dia secara otomatis bisa diakses oleh object manapun, oleh karena itu perlu hati-hati ketika membuat field atau method static
● Field atau Method static bisa diakses oleh Method yang tidak static
● Namun Field atau Method static tidak bisa mengakses Field atau Method yang tidak static
● Biasanya static digunakan untuk membuat utility
● Static biasanya akan diset menjadi final agar value pada field, method tidak dapat diubah
● Untuk mengakses static Field atau Method, kita bisa langsung menggunakan nama Class diikuti dengan titik dan static Field atau Method nya 
*/

/* Static Field */
class Application {
  static final String name = 'Belajar Dart OOP';
  static final String author = 'Aimanhakim';
}

/* Static Method */
class Math {
  static int sum(int first, int second) => first + second;
}

void main() {
  print(Application.name);
  print(Application.author);

  print(Math.sum(10, 20));
  print(Math.sum(20, 30));
}
