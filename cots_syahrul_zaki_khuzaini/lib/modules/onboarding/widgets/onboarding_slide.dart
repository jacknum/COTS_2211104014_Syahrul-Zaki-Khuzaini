import 'package:flutter/material.dart';
import '/../design_system/typography.dart';

class OnboardingSlide extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingSlide({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 250, height: 250),
        Text(title, style: AppTypography.headline, textAlign: TextAlign.center),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            description,
            style: AppTypography.subtitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
