import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/design_system/colors.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      // Navigasi ke halaman login
        Get.toNamed('/board');
      },
      style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryGreen,
      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
    ),
      child: Text("Continue", style: TextStyle(color: Colors.white)),
    );
  }
}
