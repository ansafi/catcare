import 'package:flutter/material.dart';
import '../../register/views/register_view.dart';
import '../../forgetPass/views/fogetPass_view.dart';
import '../../enterpas/views/enterpassview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmailVerificationScreen(),
    );
  }
}

class EmailVerificationScreen extends StatefulWidget {
  @override
  emailverification createState() => emailverification();
}

class emailverification extends State<EmailVerificationScreen> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFFF5E3C3), // Background color similar to the image
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
                    ResetPasswordPage(), // Ganti dengan halaman yang ingin dituju
              ),
            );
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Navigasi ke halaman Sign Up
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RegisterView(), // Ganti dengan halaman Sign Up yang sesuai
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),

            // Cat image placeholder
            Image.asset(
              '../../../../../assets/logo.png', // Path gambar di dalam folder assets
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),

            // Text: "Check Your Email"
            Text(
              "Check Your Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 10),

            // Instruction text
            Text(
              "We sent a reset link to contact@dscode.com\n"
              "Enter the 5 digit code mentioned in the email",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 20),

            // Code input fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.5,
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 4) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              }),
            ),

            SizedBox(height: 30),

            // Verify Button
            GestureDetector(
              onTap: () {
                // Aksi ketika tombol verify ditekan, menuju ke halaman berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnterPassView()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Verify The Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
