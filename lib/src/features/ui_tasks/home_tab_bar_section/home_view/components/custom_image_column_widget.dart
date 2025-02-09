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
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
            // 'assets/images/book_image.png'
            dynamicImagePath,
          width: 100,
          height: 100,
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