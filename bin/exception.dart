/*Exception
● Saat kita membuat aplikasi, kita tidak akan terhindar dengan yang namanya error
● Error direpresentasikan dengan istilah exception di dalam dart, dan semua direpresentasikan dalam bentuk class exception
● Kita bisa menggunakan class exception sendiri, atau menggunakan yang sudah disediakan
● Untuk membuat sebuah exception, kita bisa menggunakan kata kunci throw, diikuti dengan object
exception nya
● https://api.dart.dev/stable/2.14.4/dart-core/Exception-class.html 

Try Catch
● Saat kita memanggil sebuah method yang bisa menyebabkan exception, maka secara otomatis program akan berhenti.
● Jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut, dan melakukan sesuatu ketika terjadi exception
● Untuk menangkap exception, kita bisa menggunakan try-catch
● Cara menggunakan try-catch sangat mudah, di block try, kita tinggal panggil method yang bisa menyebabkan exception, dan di block catch, kita bisa melakukan sesuatu jika terjadi exception

Finally
● Dalam try-catch, kita bisa menambahkan block finally
● Block finally ini adalah block dimana akan selalu dieksekusi baik terjadi exception ataupun tidak
● Ini sangat cocok ketika kita ingin melakukan sesuatu, tidak peduli sukses ataupun gagal
*/

class ValidationException implements Exception {
  String message;
  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username == '') {
      throw ValidationException('Username is blank');
    } else if (password == '') {
      throw ValidationException('Password is blank');
    } else if (username != 'Aiman' && password != 'aiman123') {
      throw Exception('Login Failed');
    }
  }
}

void main() {
  /* multiple try catch */
  try {
    Validation.validate('aiman', 'test');
  } on ValidationException catch (e) {
    print('Validation Error: ${e.message}');
  } on Exception catch (e) {
    print('Error: $e');
  } finally {
    print('Finally');
  }

  try {
    Validation.validate('', 'test');
  } on ValidationException catch (e, stackTrace) {
    print('Validation Error: ${e.message}');
    print('Stack Trace: $stackTrace');
  } catch (e, stackTrace) {
    print('Error: ${e.toString()}');
    print('Stack Trace: $stackTrace');
  } finally {
    print('Finally');
  }
  print('Selesai');
}
