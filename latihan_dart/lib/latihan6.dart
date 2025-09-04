//MATERI OOP (OBJECT ORIENTED PROGRAMMING) 30/10/2024

/*Paradigma ada 3: struktural, ..., OOP*/
//constructor = fungsi yang berjalan otomatis ketika sebuah kelas dipanggil

/*class Mobil {
  String? nama;
  String? warna;
}
  void main() {
  Mobil mobil = Mobil();
  print(mobil.nama = 'BMW');
  print(mobil.warna = 'Abu-abu');

  Mobil mobil1 = Mobil();
  print(mobil1.nama = 'BMW');
  print(mobil1.warna = 'Hijau');
}*/

/*class Orang {
  String? nama;
  int? usia;

  void sifatOrang() {
    print("$nama yang berusia $usia tahun bersifat ramah");
  }
}
  void main() {
  Orang orang = Orang();
  orang.nama = 'Irun';
  orang.usia = 20;
  orang.sifatOrang();
}*/

class Mahasiswa {
  String? nama;
  int? _npm;
}
void main() {
  Mahasiswa mahasiswa1 = Mahasiswa();
  mahasiswa1.nama = 'Chairunnisa';
  mahasiswa1._npm = 07352211057;
  print(mahasiswa1.nama);
  print(mahasiswa1._npm);
}
