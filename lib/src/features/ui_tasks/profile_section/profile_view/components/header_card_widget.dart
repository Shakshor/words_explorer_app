import 'package:flutter/material.dart';

import '../../../../../utils/app_color.dart';

class HeaderCardWidget extends StatelessWidget {
  const HeaderCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ListTile(
        // tileColor: Colors.blueGrey.shade50,
        tileColor: AppColor.brightGray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)
        ),
        contentPadding: const EdgeInsets.all(10),
        leading: const CircleAvatar(
          backgroundColor: AppColor.greenColor,
          radius: 30,
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
        ),

        title: const Text(
          'Sign up/ Log in',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Padding(
          padding:  EdgeInsets.only(
            top: 6,
          ),
          child: Text(
            'Save your statistics and progress across\ndevices by signing in',
            style: TextStyle(
              fontSize: 14,
              color: AppColor.graniteGray,
            ),
          ),
        ),
      ),
    );
  }
}