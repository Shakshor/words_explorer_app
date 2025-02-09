import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/features/ui_tasks/home_tab_bar_section/home_view/components/common_timeline_title_row_widget.dart';
import '../../../../utils/app_color.dart';
import 'components/common_prayer_time_card_widget.dart';
import 'components/custom_icon_btn_widget.dart';
import 'components/custom_image_column_widget.dart';
import 'components/custom_mosque_details_row_widget.dart';
import 'components/custom_mosque_row_title_widget.dart';
import 'components/intoduction_title_row_widget.dart';
import 'components/prayer_details_card_widget.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(width: 10), // Add spacing
            IconButton(
              onPressed: () {  },
              icon: const Icon(
                color: AppColor.shadeBlueColor,
                Icons.home_sharp,
                size: 40,
              ),
            ),
          ],
        ),
        leadingWidth: 70,
        titleSpacing: 0,
        title: const Text(
            'Mihrab',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: const [
          NotificationIcon(),
          SizedBox(
            width: 26,
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            /*-----------intro_part---------------*/
            const Padding(
              padding:  EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: IntroductionTitleWidget(),
            ),
            // progress
            const PrayerDetailsCardWidget(),
            const SizedBox(
              height: 20,
            ),
            // grid_image_part
            const CustomGridImageWidget(),
            const Divider(
              thickness: 1,
              height: 0,
            ),
            /*--------- timeline_part ----------------*/
            const Padding(
              padding:  const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  // present_prayer_timeline
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Timeline',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const CustomPrayerTimelineCardWidget(),
                  // names_part
                  SizedBox(
                    height: 10,
                  ),
                  const TimelineNamesCardWidget(),
                  // daiy_verse
                  SizedBox(
                    height: 10,
                  ),
                  CustomDailyVerseWidget(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            /*--------- mosques_part ----------------*/
            const SizedBox(
              height: 10,
            ),
            // row_title
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: CustomMosqueRowTitleWidget(),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomMosqueDetailsCardWidget(),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}

class CustomMosqueDetailsCardWidget extends StatelessWidget {
  const CustomMosqueDetailsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      elevation: 0,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Optional: Rounded corners
        side: BorderSide(
          color: Colors.grey.shade300, // Border color
          width: 1,          // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // details_row
            const CustomMosqueDetailsRowWidget(),
            const SizedBox(
              height: 6,
            ),
            const Text('Adhan 4:00 PM'),
            const Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                        text:'Asar ',
                        style: TextStyle(
                          fontSize: 20,
                        )
                      ),
                      TextSpan(
                        text: '05:00 PM',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                )
            ),

            const SizedBox(
              height: 20,
            ),
            // news
            const Text(
                'News',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // news_details
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 30,
                  child: const Icon(
                    Icons.document_scanner_outlined
                  ),
                ),
                const SizedBox(width: 12),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Isha Ikamah time is now 7:15PM',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                        '3d ago',
                      style: TextStyle(
                          color: Colors.black45
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
                height: 8,
            ),
            // view_more_btn
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){

                },
                child: const Text(
                  'View more',

                  style: TextStyle(
                    color: Colors.black54,
                    decorationColor: Colors.black54,
                    decorationThickness: 2,
                    decoration: TextDecoration.underline,
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

class CustomDailyVerseWidget extends StatelessWidget {
  const CustomDailyVerseWidget({
    super.key,
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
      child:  const Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonTimelineTitleRowWidget(
              dynamicTitle: 'Daily Verse',
              dyamicIconData: Icons.share_outlined,
            ),
            Text(
                'Satan is your enemy--so treat him as an\nenemy--and invites his followers only to\nenter the blazing fire.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Quran 36:6'),
          ],
        ),
      ),
    );
  }
}

class CustomPrayerTimelineCardWidget extends StatelessWidget {
  const CustomPrayerTimelineCardWidget({
    super.key,
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
      child:  const Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const CommonTimelineTitleRowWidget(
              dynamicTitle: 'Today',
              dyamicIconData: Icons.volume_down_outlined,
            ),
            // timeline_details
            Row(
              children: [
                Expanded(
                  child: CommonPrayerTimeCardWidget(
                    dynamicPrayerTitle: 'Sahoor',
                    dynamicPrayerTime: '5:08 AM',
                  ),
                ),
                Expanded(
                  child: CommonPrayerTimeCardWidget(
                    dynamicPrayerTitle: 'Iftar',
                    dynamicPrayerTime: '6:19 PM',
                  ),
                ),
                Expanded(
                  child: CommonPrayerTimeCardWidget(
                    dynamicPrayerTitle: 'Tahajjut',
                    dynamicPrayerTime: '03:30 AM',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TimelineNamesCardWidget extends StatelessWidget {
  const TimelineNamesCardWidget({
    super.key,
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const CommonTimelineTitleRowWidget(
              dynamicTitle: 'Names of Allah',
              dyamicIconData: Icons.share_outlined,
            ),
            // name_details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Al Malik',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'The Absolute Ruler',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/ayat_image.png'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGridImageWidget extends StatelessWidget {
  const CustomGridImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      shrinkWrap: true,
      children: [
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/book_image.png',
          dynamicText: 'Quran',
        ),
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/hadith_books_image.png',
          dynamicText: 'Hadiths',
        ),
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/prayer_image.png',
          dynamicText: 'Prayer',
        ),
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/dua_image.png',
          dynamicText: 'Dua & Zikr',
        ),
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/qibla_image.png',
          dynamicText: 'Qibla',
        ),
        const CustomImageColumnWidget(
          dynamicImagePath: 'assets/images/mosques_image.png',
          dynamicText: 'Mosques',
        ),
      ],
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // bell_icon
        const Icon(
          Icons.notifications_outlined,
          size: 34,
          color: Colors.grey,
        ),
        // red_dot_indicator
        Positioned(
          top: 4,
          right: 6,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.shade700,
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
