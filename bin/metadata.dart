/* Metadata
● Metadata merupakan fitur yang digunakan untuk menambah informasi tambahan pada kode program yang kita buat
● Untuk menambahkan informasi tambahan ke dalam kode program kita, kita bisa menggunakan Annotation yang dimulai dengan karakter @ lalu diikuti dengan constant atau memanggil constant constructor 

  Standard Annotation
● @Deprecated -> Menandakan bahawa kode tersebut sudah tidak direkomendasikan untuk digunakan
● @override -> Menandakan bahawa field atau method tersebut merupakan overriding dari parent nya

  Membuat Annotation
● Membuat Annotation sangat mudah, kita bisa membuat constant atau bisa membuat Class dengan menggunakan Constant Constructor

  Manfaat Metadata
● Saat ini, metadata mungkin tidak terlihat begitu berguna
● Namun saat nanti kita sudah belajar tentang Reflection, maka kita akan bisa tahu manfaat yang bisa kita dapat ketika menggunakan Metadata
*/

class Sample {
  @override
  String toString() {
    return 'Sample';
  }

  @Deprecated('Do not use this anymore')
  void doNotUseThis() {}
}

class Todo {
  final String todo;

  const Todo(this.todo);
}

class Application {
  @Todo('Will be implemented next release')
  String? name;

  @Todo('Will be implemented next release')
  void featureA() {}
}
