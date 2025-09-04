//Kamis, 04-09-2025
import 'dart:io';

void main(List<String> args) {
  Map<String, String> users = {
    'admin': 'admin',
    'user': 'user',
    'guest': 'guest'
  };

  stdout.write("Masukkan Username: ");
  String? name = stdin.readLineSync();

  stdout.write("Masukkan Password: ");
  String? pass = stdin.readLineSync();

  if (name != null &&
      pass != null &&
      users.containsKey(name) &&
      users[name] == pass) {
    print("Login berhasil.");
  } else {
    print("Login gagal, Username atau Password salah!!");
  }
}
