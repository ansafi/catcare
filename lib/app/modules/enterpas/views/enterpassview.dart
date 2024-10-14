import 'package:catcare/app/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';
import '../../forgetPass2/views/fogetPass2_view.dart';
import '../../ceklis/views/ceklisview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterPassView(),
    );
  }
}

class EnterPassView extends StatefulWidget {
  @override
  _EnterPassViewState createState() => _EnterPassViewState();
}

class _EnterPassViewState extends State<EnterPassView> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi kembali
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Aksi Sign Up
              // Tambahkan logika untuk navigasi ke halaman Sign Up
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RegisterView(), // Ganti dengan halaman Sign Up yang sesuai
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
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
        backgroundColor: Color(0xFFF5E3C3), // Set background color same as body
      ),
      backgroundColor: Color(0xFFF5E3C3), // Warna latar belakang
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar logo
            Image.asset(
              '../../../../../assets/logo.png', // Ganti dengan path gambar Anda
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),

            // Text: "Enter Your New Password"
            Text(
              "Enter Your New Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 10),

            // Teks instruksi
            Text(
              "Create a New Password. Ensure it differs from previous ones for security",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 20),

            // Kolom Password Baru
            TextField(
              controller: _newPasswordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: "New Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 20),

            // Kolom Konfirmasi Password
            TextField(
              controller: _confirmPasswordController,
              obscureText: !_isConfirmPasswordVisible,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),

            SizedBox(height: 30),

            // Tombol Continue
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Ceklisview(), // Ganti dengan nama halaman yang sesuai
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
                "Continue",
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
