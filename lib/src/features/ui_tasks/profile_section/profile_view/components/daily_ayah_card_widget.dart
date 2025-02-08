import 'package:flutter/material.dart';
import '../../../../../utils/app_color.dart';

class DailyAyahCardWidget extends StatelessWidget {
  const DailyAyahCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          margin: const EdgeInsets.all(14.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Optional: Rounded corners
            side: BorderSide(
              color: Colors.grey.shade300, // Border color
              width: 1,          // Border width
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'This is the Book about which there is no \ndoubt, a guidance for those conscious of\nAllah',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Al-Baqarah 2:2',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // btn_row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: (){

                      },
                      icon: const Icon(
                        Icons.share_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){

                      },
                      icon: const Icon(
                        Icons.open_in_new_rounded,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 6,),
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.brightGray,
                      child: Icon(
                        Icons.refresh,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}