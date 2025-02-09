import 'package:flutter/material.dart';
import 'custom_icon_btn_widget.dart';

class CommonTimelineTitleRowWidget extends StatelessWidget {
  final String dynamicTitle;
  final IconData dyamicIconData;

  const CommonTimelineTitleRowWidget({
    super.key,
    required this.dynamicTitle,
    required this.dyamicIconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // 'Today',
          dynamicTitle,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
        CustomIconBtnWidget(
          // dynamicIconData: Icons.volume_down_outlined,
          dynamicIconData: dyamicIconData,
        ),
      ],
    );
  }
}