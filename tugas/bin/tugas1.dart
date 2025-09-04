//TUGAS 1 VARIABEL & TIPE DATA
void main() {
  String namaKaryawan = "Irun";
  int jamKerjaSeminggu = 40;
  double upahPerJam = 50.0;
  bool statusKaryawanTetap = true;
  double gajiKotor = jamKerjaSeminggu * upahPerJam;

  double pajak;
  if (statusKaryawanTetap) {
    pajak = gajiKotor * 0.10;
  }
  double gajiBersih = gajiKotor - pajak;

  print("===== Rincian Gaji Karyawan =====");
  print("Nama Karyawan: $namaKaryawan");
  print("Gaji Kotor: Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak: Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(2)}");
  print("==================================");
}
