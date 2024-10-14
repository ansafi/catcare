import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../login/views/login_view.dart';

class awalview extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xFFF5E3C3), // Warna cream
          child: Center(
            child: GestureDetector(
              onTap: () {
                Get.to(Loginview()); // Panggil metode navigasi
              },
              child: Image.asset(
                  '../../../../../assets/logo.png'), // Ganti dengan path gambar Anda
            ),
          ),
        ),
      ),
    );
  }
}
