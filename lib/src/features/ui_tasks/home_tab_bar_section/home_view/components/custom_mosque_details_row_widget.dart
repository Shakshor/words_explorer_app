import 'package:flutter/material.dart';
import 'custom_icon_btn_widget.dart';


class CustomMosqueDetailsRowWidget extends StatelessWidget {
  const CustomMosqueDetailsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // image&title
        Row(
          children: [
            Image.asset(
              'assets/images/mosque_image.png',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Masjidul Bari Ta'ala\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )
                        ),
                        TextSpan(
                            text: '100m',
                            style: TextStyle(
                                color: Colors.black45
                            )
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ],
        ),
        // icon_btn
        const Row(
          children: [
            CustomIconBtnWidget(
              dynamicIconData: Icons.volume_down_outlined,
            ),
            CustomIconBtnWidget(
              dynamicIconData: Icons.open_in_full_outlined,
            ),
          ],
        )
      ],
    );
  }
}