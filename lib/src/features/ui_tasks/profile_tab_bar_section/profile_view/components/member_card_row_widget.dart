import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class MemberCardRowWidget extends StatelessWidget {
  final IconData dynamicIcon;
  final Text dynamicText;

  const MemberCardRowWidget({
    super.key,
    required this.dynamicIcon,
    required this.dynamicText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: AppColor.brightGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35), // Optional: Rounded corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: AppColor.greenColor,
                  child: Icon(
                    // Icons.favorite,
                    dynamicIcon,
                    color: Colors.white,
                  ),
                ),
              ),
            ), // Customize icon color
            const SizedBox(width: 16.0),
            // Text('Keep Quran Safe from Ads\nOur commitment to keep the Quran ad-free'),

            dynamicText,
          ],
        )
      ],
    );
  }
}