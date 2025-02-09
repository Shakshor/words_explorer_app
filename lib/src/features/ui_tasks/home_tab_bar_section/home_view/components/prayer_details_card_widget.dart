import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class PrayerDetailsCardWidget extends StatelessWidget {
  const PrayerDetailsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16,
      ),
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Optional: Rounded corners
        side: BorderSide(
          color: Colors.grey.shade300, // Border color
          width: 1,          // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // location&prayer_type
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Asar',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                    'Chennai, India',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // prayer_time
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '4:15 PM',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '5:30 PM',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // progress
            Column(
              children: [
                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(10),
                  minHeight: 16,
                  value: 0.3, // 70% progress
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(AppColor.shadeBlueColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('36 minutes remaining'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}