import 'package:flutter/material.dart';
import '../../../../utils/app_color.dart';
import 'components/badge_section.dart';
import 'components/common_header_title_widget.dart';
import 'components/custom_button.dart';
import 'components/daily_ayah_card_widget.dart';
import 'components/header_card_widget.dart';
import 'components/lifetime_activity_card_widget.dart';
import 'components/member_card_row_widget.dart';
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

      body: const SingleChildScrollView(
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
            const CommonHeaderTitleWidget(
              dynamicTitle: 'Badges',
              buttonTitle: 'View all',
            ),
            // badge_column
            const BadgeSectionWidget(),
            /*----------daily_ayah_part---------------*/
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
            const DailyAyahCardWidget(),
            /*----------lifetime_part---------------*/
            const CommonHeaderTitleWidget(
              dynamicTitle: 'Lifetime Activity',
              buttonTitle: 'Done',
            ),
            const LifetimeActivityRowWidget(),
            /*----------member_part---------------*/
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                  'Log in to track your statistics',
                style: TextStyle(
                  color: AppColor.greenColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
            MemberCustomCardWidget(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class MemberCustomCardWidget extends StatelessWidget {
  const MemberCustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        margin: const EdgeInsets.all(14.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Optional: Rounded corners
          side: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1,          // Border width
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 16,
            left: 10,
            right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:  EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                    'Become a Member',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const MemberCardRowWidget(
                dynamicIcon: Icons.favorite_outlined,
                dynamicText: const Text.rich(
                  style: TextStyle(
                    color: AppColor.graniteGray,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Keep Quran Safe from Ads\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Our commitment to keep the Quran ',
                      ),
                      TextSpan(
                        text: 'ad-free\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.graniteGray,
                        ),
                      ),
                      TextSpan(
                        text: 'is possible because of the support of\npeople like you',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const MemberCardRowWidget(
                dynamicIcon: Icons.bolt,
                dynamicText: const Text.rich(
                  style: TextStyle(
                    color: AppColor.graniteGray,
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '10M+ Users\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Over 10 million users have spent more\n',
                      ),
                      TextSpan(
                        text: 'than ',
                      ),
                      TextSpan(
                        text: '100 million hours ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.graniteGray,
                        ),
                      ),
                      TextSpan(
                        text: 'reading the Quran\n',
                      ),
                      TextSpan(
                        text: 'through this app',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Use a loop to create star icons dynamically
                  for (int i = 0; i < 5; i++)
                    const Icon(
                        Icons.star,
                        color: AppColor.tuscanRed,
                        size: 16.0
                    ),
                  const SizedBox(width: 8.0),
                  const Text(
                      '200k+ positive reviews',
                    style: TextStyle(
                      color: AppColor.tuscanRed,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              CustomElevatedButton(
                  onPressed: (){

                  },
                  btnDynamicText: 'Donate Monthly',
                  buttonColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LifetimeActivityRowWidget extends StatelessWidget {
  const LifetimeActivityRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: LifetimeActivityCardWidget(
              dynamicIcon: Icons.bolt_outlined,
              dynamicLabel: 'Ayah Read',
            ),
          ),
          Expanded(
            child: LifetimeActivityCardWidget(
              dynamicIcon: Icons.timer_outlined,
              dynamicLabel: 'Time Spent',
            ),
          ),
          Expanded(
            child: LifetimeActivityCardWidget(
              dynamicIcon: Icons.emoji_events_outlined,
              dynamicLabel: 'Best Streak',
            ),
          ),
        ],
      ),
    );
  }
}









