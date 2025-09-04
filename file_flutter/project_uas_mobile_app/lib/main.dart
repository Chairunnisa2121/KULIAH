import 'package:flutter/material.dart';
import 'package:project_app/login.dart';
//import 'package:project_app/register.dart';
//import 'package:project_app/forgot_pass.dart';
//import 'package:project_app/verify_pass.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDJFdnFY_FlCGxIE5ElzepwYRWinucNayQ",
        authDomain: "project-c74f7.firebaseapp.com",
        projectId: "project-c74f7",
        storageBucket: "project-c74f7.firebasestorage.app",
        messagingSenderId: "719743341070",
        appId: "1:719743341070:web:941d395553f201b6f1a25f",
        measurementId: "G-DTDH8RPWVG"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
