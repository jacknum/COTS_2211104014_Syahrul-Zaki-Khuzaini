import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';
import '../widgets/login_button.dart';
import '/design_system/typography.dart';
import '/design_system/colors.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leadingWidth: 160, // Tambahkan lebar yang cukup untuk ikon dan logo
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.black),
              onPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: Image.asset(
                'assets/logo_gojek.png', // Path logo Gojek
                height: 24,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: AppColors.black),
            onPressed: () {
              // Navigasi ke halaman bantuan
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your registered phone number to log in",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 20),
            // Input Nomor Telepon
            Text(
              "Phone number*",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                // Kode Negara
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: AppColors.greyIndicator),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/flag_ind.png', // Path ikon bendera Indonesia
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "+62",
                        style: TextStyle(fontSize: 16, color: AppColors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // Input Nomor Telepon
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.black),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear, color: AppColors.black),
                        onPressed: () {
                          phoneController.clear();
                        },
                      ),
                      hintText: "81x-xxx-xxx",
                      hintStyle: AppTypography.login
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman masalah nomor
              },
              child: Text(
                "Issue with number?",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            // Tombol Lanjutkan
            ElevatedButton(
              onPressed: () {
                // Aksi untuk melanjutkan login
                Get.toNamed('/board');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
