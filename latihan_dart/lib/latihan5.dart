//MATERI OOP (OBJECT ORIENTED PROGRAMMING) 23/10/2024

//Objek adalah hasil instansiasi dari sebuah class
//fields atau properti atau atribut adalah data yg bisa disisipkan didalam objek
//method adalah function yg terdapat di dalam class
//pascalcase= bentuk penamaan sebuah class tanpa spasi

void main() {
  DataGaje info = DataGaje('Hello', 4);
  info.nama('Irun', 'Fitri', 'Fahira', 'Eby');
  info.usia(20, 22, 19, 19);
}

class DataGaje {
  String data1;
  int data2;

  DataGaje(this.data1, this.data2);

  void nama(String a, String b, String c, String d) {
    print('nama: $a, $b, $c, $d');
  }

  void usia(int w, int x, int y, int z) {
    print('usia: $w, $x, $y, $z');
  }
}
