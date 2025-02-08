import 'package:flutter/material.dart';
import '../../../../utils/app_color.dart';
import 'components/badge_section.dart';
import 'components/header_card_widget.dart';
import 'components/statistics_header_part.dart';

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.green.shade700,
        backgroundColor: AppColor.greenColor,
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            // header_card
            const HeaderCardWidget(),
            // divider
            const Divider(
              color: AppColor.brightGray,
              thickness: 2,
            ),
        
            /*------------------statistics--------------*/
            // title_part
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Daily Reading',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontSize: 16,
                      color: AppColor.tuscanRed,
                    ),
                  ),
                  Icon(
                      Icons.assignment_outlined,
                      color: Colors.grey,
                      size: 26,
                      // Icons.menu_book_outlined,
                  ),
                ],
              ),
            ),
        
            // checking_part
            const StatisticsHeaderPart(),
        
            /// chart_part_is_not_done
            /// progress_bar_is_not_done
        
            /*----------badges_part---------------*/
            // header_part
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Badges',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontSize: 16,
                      color: AppColor.tuscanRed,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
        
                      },
                      child: Text(
                          'View all',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenColor,
                        ),
                      ),
                  ),
                ],
              ),
            ),
            // badge_column
            const BadgeSectionWidget(),
            /*----------badges_part---------------*/
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:  EdgeInsets.all(14.0),
                child: Text(
                  'Daily Ayah',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    letterSpacing: 0,
                    fontSize: 16,
                    color: AppColor.tuscanRed,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






