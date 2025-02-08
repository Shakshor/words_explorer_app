import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/utils/app_color.dart';

class LifetimeActivityCardWidget extends StatelessWidget {
  final IconData dynamicIcon;
  final String dynamicLabel;

  const LifetimeActivityCardWidget({
    super.key,
    required this.dynamicIcon,
    required this.dynamicLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Optional: Rounded corners
        side: BorderSide(
          color: Colors.grey.shade300, // Border color
          width: 1,          // Border width
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
                // Icons.add,
                dynamicIcon,
                color: AppColor.greenColor,
                size: 28,
            ),
            SizedBox(height: 8),
            Text("--",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(
                dynamicLabel,
            style: TextStyle(fontSize: 14, color: Colors.black54)),
          ],
        ),
      ),
    );
  }
}