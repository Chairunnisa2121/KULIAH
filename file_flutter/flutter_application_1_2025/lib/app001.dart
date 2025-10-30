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
        title: Text(
          "Appbar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        leading: IconButton(
            color: Colors.white, onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.time_to_leave_outlined)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.date_range_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _kolom('Hello', Colors.purple[100]),
                  _kolom(
                    'Hello',
                    Colors.pink[100],
                  ),
                  _kolom(
                    'Hello',
                    Colors.orange[100],
                  ),
                  _kolom(
                    'Hello',
                    Colors.blue[100],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _kolom(String judul, Color? warna) {
    return Container(
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              judul,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
