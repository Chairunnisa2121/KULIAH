//MATERI FUNCTION (16/10/2024)

//import 'dart:io';
//import 'dart:math';

void main() {
  //FUNGSI UTAMA
  namaMahasiswa();
}

/*void perkalian() {
  stdout.write("Masukkan nilai pertama: ");
  int nilai1 = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan nilai kedua: ");
  int nilai2 = int.parse(stdin.readLineSync()!);
  int hasil = nilai1 * nilai2;
  print((hasil));
}*/

/*void pesan() {
  print("Selamat datang di dunia pemrograman dart!");
}*/

/*void bilanganGenap() {
  for (int i = 2; i < 21; i += 2) {
    print(i);
  }
}*/

void namaMahasiswa() {
  List<String> nameMahasiswa = [
    'Chairunnisa',
    'Fitri Angriyani',
    'Nurfahira Rambay',
    'Febriyanti Efendi'
  ];
  print("Nama mahasiswa: ");
  for (var e in nameMahasiswa) {
    print(e);
  }
}
