/* Constant Constructor
● Saat kita membuat Class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat Constructor nya dalam bentuk constant
● Untuk membuat constant constructor kita bisa gunakan kata kunci const
● Keuntungan saat menggunakan Constant Constructor adalah, ketika kita membuat constant object, secara otomatis object yang sama akan digunakan
*/

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  var a = ImmutablePoint(10, 10);
  var b = ImmutablePoint(10, 10);

  var point1 = const ImmutablePoint(10, 10);
  var point2 = const ImmutablePoint(10, 10);

  print(a ==
      b); // object a akan disimpan di dalam memori a, object b akan disimpan dalam memori b
  print(point1 ==
      point2); // object point1 dan point2 akan disimpan dalam memori yang sama
}
