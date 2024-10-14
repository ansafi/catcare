import 'package:catcare/app/modules/login/views/login_view.dart';
import 'package:catcare/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ceklisview(),
    );
  }
}

class Ceklisview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Changed"),
        backgroundColor: Color(0xFFF5E3C3),
        actions: [
          GestureDetector(
            onTap: () {
              // Tambahkan aksi Sign Up di sini
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RegisterView(), // Ganti dengan nama halaman Sign Up
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Center(
                child: Text(
                  "Sign Up!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFF5E3C3), // Background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            // Cat image placeholder
            Image.asset(
              '../../../../../assets/logo.png', // Ganti dengan path gambar Anda
              width: 150,
              height: 150,
            ),

            SizedBox(height: 20),

            // Success message text
            Text(
              "Your Password Has Been Successfully Changed",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 30),

            // Checkmark icon
            Icon(
              Icons.check_circle_outline,
              size: 100,
              color: Colors.black87,
            ),

            SizedBox(height: 30),

            // Back To Login Button
            ElevatedButton(
              onPressed: () {
                // Tambahkan navigasi ke halaman login
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Loginview(), // Ganti dengan nama halaman Login
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Back To Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
