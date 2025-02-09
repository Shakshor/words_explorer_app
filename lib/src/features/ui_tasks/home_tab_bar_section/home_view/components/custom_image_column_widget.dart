import 'package:flutter/material.dart';

class CustomImageColumnWidget extends StatelessWidget {
  final String dynamicImagePath;
  final String dynamicText;

  const CustomImageColumnWidget({
    super.key,
    required this.dynamicImagePath,
    required this.dynamicText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            // 'assets/images/book_image.png'
            dynamicImagePath,
        ),
        Text(
          // 'Quran',
          dynamicText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}