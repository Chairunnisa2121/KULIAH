//MATERI IF ELSE, LOOPING, LIST, WHILE, D0-WHILE, & TRY CATCH AND FINALLY

//import 'dart:io';

/*void main() { //latihan if else
  stdout.write("Berapa usiamu: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("usia $usia tahun dapat memasuki bioskop");
  } else {
    print("usia $usia tahun tidak dapat memasuki bioskop");
  }
}*/

/*void main() { //latihan if, else, dan else if
  stdout.write("Masukkan nilai: ");
  int nilai = int.parse(stdin.readLineSync()!);
  if (nilai >= 85 && nilai <= 100) {
    print("Nilai anda A");
  } else if (nilai >= 65 && nilai <= 84) {
    print("Nilai anda B");
  } else if (nilai >= 45 && nilai <= 64) {
    print("Nilai anda C");
  } else if (nilai >= 25 && nilai <= 44) {
    print("Nilai anda D");
  } else if (nilai > 100) {
    print("Nilai tidak valid! Masukkan kembali nilai.");
  } else {
    print("Nilai anda E");
  }
}*/

/*void main() { //tampilkan suhu ruangan
  stdout.write("Masukkan suhu ruangan(celcius): ");
  double suhu = double.parse(stdin.readLineSync()!);
  if (suhu > 30) {
    print("Suhu Panas!");
  } else if (suhu >= 15 && suhu <= 30) {
    print("Suhu Sejuk!");
  } else {
    print("Suhu Dingin!");
  }
}*/

/*void main() { //tampilkan looping nomor
  int i;
  for (int i = 1; i <= 10; i++) {
    print("Nomor ke - $i");
  }
}*/

/*void main() { //tampilkan list nama
  List<String> mahasiswa = ["Irun", "Eby", "Fit", "Fahira"];
  for (String i in mahasiswa) {
    print("Nama saya $i");
  }
}*/

/*void main() { //tampilkan perkalian 1 hingga 5
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$j * $i = ${j * i}");
    }
    print("");
  }
}*/

/*void main() { //tampilkan bilangan genap dari 2 sampai 20
  for (int i = 2; i < 21; i += 2) {
    print(i);
  }
}*/

/*void main() { //tampilkan list negara
  List<String> negara = [
    "Indonesia",
    "Malaysia",
    "Singapore",
    "Thailan",
    "Korea Selatan",
    "Palestina",
    "Arab Saudi",
    "Korea Utara",
    "Argentina",
    "Jerman"
  ];
  int nomor = 1;
  negara.forEach((negara) {
    print($(nomor).$(negara));//ada error dibaris ini
    nomor++;
  });
}*/

/*void main() { //latihan while
  int i = 1;
  while (i <= 10) {
    print(i);
    if (i == 7) {
      break;
    }
    i++;
  }
}*/

/*void main() { //latihan do-while
  int i = 1;
  do {
    print(i);
    i++;
  } while (i >= 10);
}*/

/*void main() { //latihan try, catch, dan finally
  try {
    int hasil = 12 ~/ 10;
    print(hasil);
  } catch (e) {
    print("Error: $e'");
  } finally {
    print("Blok ini akan terus dieksekusi");
  }
}*/

//import 'dart:io';
/*void main() { //menampilkan try, catch, dan finally
  stdout.write("Masukkan angka pertama: ");
  int angka1 = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  int angka2 = int.parse(stdin.readLineSync()!);
  try {
    int hasil = angka1 ~/ angka2;
    print("$angka1 : $angka2 = $hasil");
  } catch (e) {
    print("Error $e");
  }
}*/
