import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';
import 'badge_image_row_widget.dart';
import 'custom_button.dart';

class BadgeSectionWidget extends StatelessWidget {
  const BadgeSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
        bottom: 14,
        left: 40,
        right: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // image_row_widget
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BadgeImageRowWidget(
                dynamicImagePath: 'assets/images/streak_image.png',
                dynamicText: 'Consistent',
              ),
              BadgeImageRowWidget(
                dynamicImagePath: 'assets/images/search_image.png',
                dynamicText: 'Search Explorer',
              ),
              BadgeImageRowWidget(
                dynamicImagePath: 'assets/images/audio_image.png',
                dynamicText: 'Audio Explorer',
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Don't lose your Badges! Log in to ensure your\nprogress and badges are saved.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // btn
          CustomElevatedButton(
            onPressed: () {  },
            btnDynamicText: 'Sign up / Log in',
            buttonColor: AppColor.greenColor,
          ),
        ],
      ),
    );
  }
}