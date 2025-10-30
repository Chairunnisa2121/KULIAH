import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true),
      home: const HalamanAwal(),
    );
  }
}

class HalamanAwal extends StatelessWidget {
  const HalamanAwal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "navbar",
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.deepOrange,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}
