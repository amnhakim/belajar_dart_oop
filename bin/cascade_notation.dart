/*Cascade Notation
● Cascade Notation merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada object yang sama
● Ada dua jenis Cascade Notation, yaitu .. (titik titik), dan ?.. (tanda tanya titik titik)
● .. digunakan untuk object yang tidak nullable, sedangkan ?.. digunakan untuk object yang nullable */

class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main(List<String> args) {
  /* Without Cascade Notation */
  // var user = User();
  // user.username = 'aiman';
  // user.name = 'Aiman';
  // user.email = 'aimanhkm789@gmail.com';

  /* With Cascade Notation */
  var user = User()
    ..username = 'aiman'
    ..name = 'Aiman'
    ..email = 'aimanhkm789@gmail.com';

  User? user2 = createUser()
    ?..username = 'aiman'
    ..name = 'Aiman'
    ..email = 'aimanhkm789@gmail.com';
}
