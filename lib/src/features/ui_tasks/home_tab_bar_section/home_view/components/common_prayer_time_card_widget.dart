import 'package:flutter/material.dart';

class CommonPrayerTimeCardWidget extends StatelessWidget {
  final String dynamicPrayerTitle;
  final String dynamicPrayerTime;

  const CommonPrayerTimeCardWidget({
    super.key,
    required this.dynamicPrayerTitle,
    required this.dynamicPrayerTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              // 'Sahoor',
              dynamicPrayerTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              // '5:08 AM',
              dynamicPrayerTime,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}