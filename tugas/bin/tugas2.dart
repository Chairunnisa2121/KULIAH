//TUGAS 2 VARIABEL & CONDITIONAL STATEMENT
import 'dart:io';

void main() {
  //if else statement
  stdout.write("Masukkan nilai: ");
  int nilai = int.parse(stdin.readLineSync()!);
  if (nilai >= 85 && nilai <= 100) {
    print("Skor anda: $nilai");
    print("Grade anda: A");
  } else if (nilai >= 70 && nilai <= 84) {
    print("Skor anda: $nilai");
    print("Grade anda: B");
  } else if (nilai >= 60 && nilai <= 69) {
    print("Skor anda: $nilai");
    print("Grade anda: C");
  } else if (nilai >= 50 && nilai <= 59) {
    print("Skor anda: $nilai");
    print("Grade anda: D");
  } else if (nilai < 50) {
    print("Skor anda: $nilai");
    print("Grade anda: E");
  } else {
    print("Nilai tidak valid, Masukkan Kembali Nilai Anda!!");
  }
}
