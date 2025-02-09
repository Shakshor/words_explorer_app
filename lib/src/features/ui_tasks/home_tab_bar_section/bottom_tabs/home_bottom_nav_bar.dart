import 'package:flutter/material.dart';
import '../../../../utils/app_color.dart';
import '../home_view/home_tab_screen.dart';


class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({super.key});

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {


  // state
  int _currentIndex = 0;

  // pages
  // final instead of List
  final  pages = const [
    HomeTabScreen(),
    HomeTabScreen(),
    HomeTabScreen(),
    HomeTabScreen(),
    HomeTabScreen(),
  ];

  // handle tap function
  void handleTapEvent (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Home Page'),
      // ),

      // body: pages[_currentIndex],

      // preserving previous state
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),

      // bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.green.shade400,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.tealAccent.shade200,
        selectedIconTheme: const IconThemeData(
          color: AppColor.shadeBlueColor,
          size: 26,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        // unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          color: Colors.green,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
          size: 26,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,

        // onTap event for navigate page
        onTap: handleTapEvent,

        items:  const [
          // home_item
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
            // backgroundColor: Colors.black,
          ),

          // planner_item
          BottomNavigationBarItem(
            label: 'Quran',
            icon: Icon(Icons.book_outlined),
            // backgroundColor: Colors.green,
          ),

          // library_item
          BottomNavigationBarItem(
              label: 'Mosques',
              icon: Icon(Icons.mosque_outlined)
          ),


          // profile_item
          BottomNavigationBarItem(
              label: 'Saves',
              icon: Icon(Icons.bookmark_border_outlined)
          ),

          // profile_item
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
