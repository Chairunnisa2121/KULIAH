import 'package:flutter/material.dart';
import 'package:project_app/verify_pass.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberphoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Forgot',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/forgot.png',
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Don't worry! It happens. Please enter the phone number associated with your account.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Phone number input
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: numberphoneController,
                    keyboardType: TextInputType.phone,
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
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Get OTP button
            ElevatedButton(
              onPressed: () {
                // Get OTP button action
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.6),
                ),
              ),
              child: const Center(
                child: Text(
                  "Get OTP",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
