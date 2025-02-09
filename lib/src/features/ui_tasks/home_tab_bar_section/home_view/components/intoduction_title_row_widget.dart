import 'package:flutter/material.dart';

class IntroductionTitleWidget extends StatelessWidget {
  const IntroductionTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Assalamu Alaikum',
          style: TextStyle(
            fontSize: 16,
            // fontWeight: FontWeight.w500
          ),
        ),
        Text(
          '22 Jamadul, 1445',
          style: TextStyle(
              color: Colors.black54
          ),
        ),
      ],
    );
  }
}