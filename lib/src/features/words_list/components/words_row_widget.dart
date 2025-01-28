import 'package:flutter/material.dart';

class WordsRowWidget extends StatelessWidget {
  final String dynamicTitle;
  final String dynamicWordData;

  const WordsRowWidget({
    super.key,
    required this.dynamicTitle,
    required this.dynamicWordData,
  });

  @override
  Widget build(BuildContext context) {
    TextScaler fontScaler = MediaQuery.textScalerOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        // title
        Card(
          // color: Colors.teal.shade50,
          color: const Color(0xfff3f1f1),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              // 'Asset No',
              dynamicTitle,
              style: TextStyle(
                // fontSize: fontScaler.scale(16),
                fontSize: fontScaler.scale(14),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // dynamic_data_container
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.blue.shade50,
                // color: const Color(0xfff3f1f1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.shade400,
                )
            ),
            child: Text(
              dynamicWordData,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                // color: Colors.black87,
                fontSize: fontScaler.scale(16),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
