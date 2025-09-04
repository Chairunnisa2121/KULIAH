import 'package:flutter/material.dart';
import 'package:project_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController numberphoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordController2 = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Register',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Phone number input
                      const Text(
                        "Enter your mobile number",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: numberphoneController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomor telepon tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phone),
                          suffixIcon:
                              const Icon(Icons.check_circle_outline_outlined),
                          hintText: '+62 81317xxxx',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Email input
                      const Text(
                        "Enter your email",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'abc12@gmail.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password input
                      const Text(
                        "Enter your password",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          hintText: '************',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password input ke-2
                      const Text(
                        "Re-Enter your password",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController2,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          hintText: '************',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Sign Up button
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            if (numberphoneController.text == '081317073377' &&
                                passwordController.text ==
                                    passwordController2.text) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Sign Up Berhasil"),
                                duration: Duration(seconds: 2),
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Sign Up Gagal!"),
                                duration: Duration(seconds: 2),
                              ));
                            }
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF151515),
                            borderRadius: BorderRadius.circular(17.6),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Sign in link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          const SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      const Center(
                        child: Text('Or', style: TextStyle(fontSize: 16)),
                      ),
                      const SizedBox(height: 20),

                      // Continue with Google
                      GestureDetector(
                        onTap: () async {
                          User? user = await signInWithGoogle();
                          if (user != null) {
                            print('Selamat datang, ${user.displayName}');
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17.6),
                            border: Border.all(
                              color: const Color(0xFFD1D1D1),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/google.png',
                                  width: 24, height: 24),
                              const SizedBox(width: 10),
                              const Text(
                                "Continue with Google",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      // Continue with Apple
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17.6),
                            border: Border.all(
                              color: const Color(0xFFD1D1D1),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apple, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<User?> signInWithGoogle() async {
  try {
    // Langkah 1: Login dengan Google
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      print('Login dibatalkan pengguna');
      return null;
    }

    // Langkah 2: Ambil autentikasi Google
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Langkah 3: Buat credential untuk Firebase
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Langkah 4: Login ke Firebase
    final UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    // Langkah 5: Ambil data pengguna
    final User? user = userCredential.user;
    if (user != null) {
      print('Login berhasil: ${user.displayName}');
      return user;
    }
  } catch (e) {
    print('Error saat login: $e');
  }
  return null;
}
