import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnDynamicText;
  final Color buttonColor;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.btnDynamicText,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              padding: const EdgeInsets.symmetric(
                  horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              // "Sign up / Log in",
              btnDynamicText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ],
    );
  }
}