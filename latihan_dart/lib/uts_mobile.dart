import 'dart:io';

class Pengemudi {
  String nama;
  double rating;
  int jumlahPerjalanan;

  Pengemudi(this.nama)
      : rating = 5.0,
        jumlahPerjalanan = 0;

  void updateRating(double ratingBaru) {
    rating =
        ((rating * jumlahPerjalanan) + ratingBaru) / (jumlahPerjalanan + 1);
    jumlahPerjalanan++;
  }

  double hitungHarga(double jarak, double hargaPerKm, {bool diskon = false}) {
    double harga = jarak * hargaPerKm;
    if (diskon && jarak > 10) {
      harga *= 0.9; // Diskon 10% untuk jarak > 10km
    }
    return harga;
  }
}

class AplikasiPemesanan {
  List<Pengemudi> pengemudiList = [];

  void tambahPengemudi(Pengemudi pengemudi) {
    pengemudiList.add(pengemudi);
  }

  void tampilkanPengemudi() {
    print("Daftar Pengemudi:");
    for (int i = 0; i < pengemudiList.length; i++) {
      print(
          "${i + 1}. ${pengemudiList[i].nama} (Rating: ${pengemudiList[i].rating.toStringAsFixed(1)})");
    }
  }
}

void main() {
  var aplikasi = AplikasiPemesanan();

  // Menambahkan pengemudi
  aplikasi.tambahPengemudi(Pengemudi("Budi"));
  aplikasi.tambahPengemudi(Pengemudi("Siti"));
  aplikasi.tambahPengemudi(Pengemudi("Dion"));

  // Menampilkan daftar pengemudi dengan rating awal
  print("=== Selamat Datang di Aplikasi Pemesanan ===");
  aplikasi.tampilkanPengemudi();

  // Memilih pengemudi
  stdout.write("\nPilih pengemudi (masukkan nomor): ");
  int pilihanPengemudi = int.parse(stdin.readLineSync()!);

  if (pilihanPengemudi < 1 ||
      pilihanPengemudi > aplikasi.pengemudiList.length) {
    print("Pilihan tidak valid.");
    return;
  }

  var pengemudiTerpilih = aplikasi.pengemudiList[pilihanPengemudi - 1];
  print(
      "\nPengemudi yang Anda pilih: ${pengemudiTerpilih.nama} (Rating: ${pengemudiTerpilih.rating.toStringAsFixed(1)})");

  // Input jarak perjalanan
  stdout.write("Masukkan jarak perjalanan (km): ");
  double jarak = double.parse(stdin.readLineSync()!);

  // Harga perjalanan
  const double hargaPerKm = 5000;
  double hargaTanpaDiskon =
      pengemudiTerpilih.hitungHarga(jarak, hargaPerKm, diskon: false);
  double hargaDenganDiskon =
      pengemudiTerpilih.hitungHarga(jarak, hargaPerKm, diskon: true);

  // Menampilkan harga perjalanan
  print("\n=== Harga Perjalanan ===");
  print("Harga tanpa diskon: Rp ${hargaTanpaDiskon.toStringAsFixed(0)}");
  print("Harga dengan diskon: Rp ${hargaDenganDiskon.toStringAsFixed(0)}");

  // Update rating berdasarkan input pengguna
  stdout.write("Masukkan rating untuk pengemudi (${pengemudiTerpilih.nama}): ");
  double ratingBaru = double.parse(stdin.readLineSync()!);
  pengemudiTerpilih.updateRating(ratingBaru);

  // Menampilkan rating setelah diperbarui
  print("\n=== Rating Diperbarui ===");
  print(
      "${pengemudiTerpilih.nama} sekarang memiliki rating: ${pengemudiTerpilih.rating.toStringAsFixed(2)}");
}
