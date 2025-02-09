import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class StatisticsHeaderPart extends StatelessWidget {
  const StatisticsHeaderPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColor.lightTeal,
          radius: 80,
          child: const Icon(
            Icons.check,
            size: 80,
            color: AppColor.greenColor,
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        const Text.rich(
            TextSpan(
                children: [
                  TextSpan(
                      text: '20min ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  TextSpan(
                    text: '/1min',
                  ),
                ]
            )
        ),
      ],
    );
  }
}