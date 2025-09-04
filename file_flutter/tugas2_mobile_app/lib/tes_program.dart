import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiSaya());
}

class AplikasiSaya extends StatelessWidget {
  const AplikasiSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo dan Nama Aplikasi
            Row(
              children: [
                Icon(Icons.eco, color: Colors.green), // Ikon daun
                SizedBox(width: 8),
                Text(
                  'APP',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(Icons.notifications, color: Colors.black), // Ikon notifikasi
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Salam kepada pengguna
            const Text(
              'Halo, Sara Rose',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Pilihan perasaan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buatIkonPerasaan('Love', Icons.favorite, Colors.red),
                _buatIkonPerasaan('Cool', Icons.face, Colors.blue),
                _buatIkonPerasaan(
                    'Happy', Icons.sentiment_satisfied, Colors.yellow),
                _buatIkonPerasaan(
                    'Sad', Icons.sentiment_dissatisfied, Colors.grey),
              ],
            ),
            const SizedBox(height: 24),
            // Bagian Fitur
            const Text(
              'Feature',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Positive vibes',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Boost your mood with positive vibes',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.play_arrow, color: Colors.green),
                            SizedBox(width: 4),
                            Text('10 mins',
                                style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/feature/gambar1_ver1.png', // Ganti dengan gambar asli
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Bagian Latihan
            const Text(
              'Latihan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 3,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buatKartuLatihan('Relaxation', Colors.purple[100]),
                _buatKartuLatihan('Meditation', Colors.pink[100]),
                _buatKartuLatihan('Beathing', Colors.orange[100]),
                _buatKartuLatihan('Yoga', Colors.blue[100]),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Jadwal'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }

  // Fungsi untuk membuat ikon perasaan
  Widget _buatIkonPerasaan(String label, IconData ikon, Color warna) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: warna.withOpacity(0.2),
          child: Icon(ikon, color: warna),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  // Fungsi untuk membuat kartu latihan
  Widget _buatKartuLatihan(String judul, Color? warna) {
    return Container(
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          judul,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
