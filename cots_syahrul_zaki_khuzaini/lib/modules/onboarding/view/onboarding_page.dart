import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/onboarding_slide.dart';
import '/../design_system/colors.dart';
import '/../design_system/typography.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _slides = [
    {
      "image": "assets/selamat_datang.png",
      "title": "Selamat datang di gojek!",
      "description":
          "Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun.",
    },
    {
      "image": "assets/transportasi_logistik.png",
      "title": "Transportasi & Logistik",
      "description":
          "Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~",
    },
    {
      "image": "assets/makan_belanja.png",
      "title": "Pesan makan & belanja",
      "description": "Lagi ngidam sesuatu? Gojek beliin gak pakai lama.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian header dengan logo dan ikon "IND"
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo Gojek
                Image.asset(
                  'assets/logo_gojek.png', // Path logo Gojek
                  height: 30,
                ),
                // Ikon "IND"
                Image.asset(
                  'assets/language.png', // Path ikon bendera "IND"
                  height: 30,
                ),
              ],
            ),
          ),

          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: _slides.length,
              itemBuilder: (context, index) {
                final slide = _slides[index];
                return OnboardingSlide(
                  imagePath: slide["image"]!,
                  title: slide["title"]!,
                  description: slide["description"]!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _slides.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: _currentIndex == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? AppColors.primaryGreen
                      : AppColors.greyIndicator,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigasi ke halaman login
              Get.toNamed('/login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryGreen,
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
            ),
            child: Text("Masuk", style: TextStyle(color: Colors.white)),
          ),
          // Tombol "Belum ada akun?, Daftar dulu" dengan gaya sesuai desain
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman daftar
                Get.toNamed('/register');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: AppColors.primaryGreen, width: 2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              ),
              child: Text(
                "Belum ada akun? Daftar dulu",
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 35.0, right: 60.0, bottom: 10.0),
            child: Text(
              "Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.",
              style: AppTypography.smallText,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
