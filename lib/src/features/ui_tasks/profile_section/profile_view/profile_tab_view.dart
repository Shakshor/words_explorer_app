import 'package:flutter/material.dart';

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        leading: Row(
          children: [
            const SizedBox(width: 20), // Add spacing
            IconButton(
              icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
              ), // Custom color
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        leadingWidth: 70,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        titleSpacing: 0,
        actions: const [
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.bookmark_border,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
