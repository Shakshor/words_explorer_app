import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class CommonHeaderTitleWidget extends StatelessWidget {
  final String dynamicTitle;
  final String buttonTitle;

  const CommonHeaderTitleWidget({
    super.key,
    required this.dynamicTitle,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            // 'Badges',
            dynamicTitle,
            style: const TextStyle(
              letterSpacing: 0,
              fontSize: 16,
              color: AppColor.tuscanRed,
            ),
          ),
          TextButton(
            onPressed: (){

            },
            child: Text(
              // 'View all',
              buttonTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.greenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}