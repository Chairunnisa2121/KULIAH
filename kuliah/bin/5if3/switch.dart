//Kamis, 04-09-2025
import 'dart:io';

void main() {
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
}
