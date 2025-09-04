//MATERI IF ELSE, LIST, SWITCH

/*void main() {
  var nilai = 70;
  var absen = 90;
  if (nilai >= 75 && absen >= 75) {
    print('Anda Lulus');
  } else {
    //tambahan
    print("Anda tidak lulus");
  }
}*/

//import 'dart:io';

/*void main() {
  print("===Login===");
  stdout.write("Password: ");
  String password = stdin.readLineSync()!.trim();
  if (password == 'Irun21') {
    print("Login Berhasil");
  } else {
    print("Login Gagal!!");
  }
}*/

/*void main() {
  print("~~~ Quote Harian ~~~");
  stdout.write("Masukkan Hari: ");
  String hari = stdin.readLineSync()!.trim().toLowerCase();
  String quote;
  switch (hari) {
    case "senin":
      {
        quote = "Mari kita mulai dari Senin";
        break;
      }
    case "selasa":
      {
        quote = "Kalau tidak bisa Senin, hari Selasa juga bisa";
        break;
      }
    case "rabu":
      {
        quote = "Rabu aja kalau Selasa juga tidak bisa";
        break;
      }
    case "kamis":
      {
        quote = "Pemalas ya anda. Yaudah dimulai dari Kamis";
        break;
      }
    case "jumat":
      {
        quote = "Jumat hari berkah woyy";
        break;
      }
    case "sabtu":
      {
        quote = "Woapp!! Sabtu ni";
        break;
      }
    case "minggu":
      {
        quote = "Dahlah besok Senin";
        break;
      }
    default:
      {
        quote = "Hari yang anda masukkan salah!";
      }
  }
  print(quote);
}*/

/*void main() {
  print("Apakah kamu suka aku?");
  stdout.write("Jawab (y/t): ");
  String jawab = stdin.readLineSync()!;
  var hasil = (jawab == 'y') ? "Menikah" : "Jomblo lagi";
  print("Selamat kamu $hasil");
}*/


/*void main() {
  var language = new List(5); //ada error dibaris ini
  print("Sebutkan ${language.length} yang ingin kamu pelajari!");
  for (int i = 0; i < language.length; i++) {
    stdout.write("$i. ");
    language[i] = stdin.readLineSync();
  }
  print(language);
}*/
