import 'package:flutter/material.dart';

class CustomIconBtnWidget extends StatelessWidget {
  final IconData dynamicIconData;

  const CustomIconBtnWidget({
    super.key,
    required this.dynamicIconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Optional: Rounded corners
        side: BorderSide(
          color: Colors.grey.shade300, // Border color
          width: 1,          // Border width
        ),
      ),
      child:  Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Icon(
          // Icons.volume_down_outlined,
          dynamicIconData,
          size: 30,
          color: Colors.black45,
        ),
      ),
    );
  }
}