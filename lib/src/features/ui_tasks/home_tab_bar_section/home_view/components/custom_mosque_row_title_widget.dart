import 'package:flutter/material.dart';

class CustomMosqueRowTitleWidget extends StatelessWidget {
  const CustomMosqueRowTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Mosques',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: (){

          },
          child: const Text(
            'View all',

            style: TextStyle(
              color: Colors.black54,
              decorationColor: Colors.black54,
              decorationThickness: 2,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}