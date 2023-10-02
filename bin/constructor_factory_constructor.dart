/* Factory Constructor
● Factory Constructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat object baru, namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita inginkan
● Misal kita ingin mengembalikan object yang sama berkali-kali, kita bisa menggunakan Factory Constructor
● Untuk membuat Factory Constructor kita bisa menggunakan kata kunci factory sebelum pembuatan Constructor nya 
*/

class Database {
  Database() {
    print('Create new database connection');
  }

  static Database database = Database();

  Database.getWithoutFactory() : this();

  factory Database.get() {
    return database;
  }
}

void main(List<String> args) {
  var db1 = Database.getWithoutFactory();
  var db2 = Database.getWithoutFactory();
  print(db1 == db2);

  var database1 = Database.get();
  var database2 = Database.get();
  print(database1 == database2);
}