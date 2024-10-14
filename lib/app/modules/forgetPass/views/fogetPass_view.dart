import 'package:catcare/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';
import '../../forgetPass2/views/fogetPass2_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordPage(),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5E3C3),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Menavigasi ke halaman sebelumnya
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    RegisterView(), // Ganti dengan halaman yang ingin dituju
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xFFF5E3C3), // Warna cream
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar kucing di atas
              Image.asset(
                '../../../../../assets/logo.png', // Ganti dengan path gambar Anda
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),

              // Text 'Enter Your Email'
              Text(
                'Enter Your Email',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),

              // Deskripsi kecil di bawahnya
              Text(
                'Enter the email address to get link reset your password',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Label Email
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Input Email
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              SizedBox(height: 30),

              // Tombol Continue
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman berikutnya
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailVerificationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Warna background tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
