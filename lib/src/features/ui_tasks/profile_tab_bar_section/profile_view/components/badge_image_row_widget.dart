import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class BadgeImageRowWidget extends StatelessWidget {
  final String dynamicImagePath;
  final String dynamicText;

  const BadgeImageRowWidget({
    super.key,
    required this.dynamicImagePath,
    required this.dynamicText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          // 'assets/images/streak_image.png',
          fit: BoxFit.contain,
          dynamicImagePath,
          width: 100,
          height: 100,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          // 'Consistent',
          dynamicText,
          style: const TextStyle(
            letterSpacing: 0,
            fontSize: 16,
            color: AppColor.graniteGray,
          ),
        ),
      ],
    );
  }
}