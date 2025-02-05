import 'package:flutter/material.dart';
import 'package:words_explorer_app/src/features/ui_tasks/profile_section/profile_view/profile_tab_view.dart';

class ProfileBottomNav extends StatefulWidget {
  const ProfileBottomNav({super.key});

  @override
  State<ProfileBottomNav> createState() => _ProfileBottomNavState();
}

class _ProfileBottomNavState extends State<ProfileBottomNav> {


  // state
  int _currentIndex = 0;

  // pages
  // final instead of List
  final  pages = const [
    ProfileTabScreen(),
    ProfileTabScreen(),
    ProfileTabScreen(),
    ProfileTabScreen(),
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
        backgroundColor: Colors.green.shade400,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
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
            label: 'Planner',
            icon: Icon(Icons.pending_actions_outlined),
            // backgroundColor: Colors.green,
          ),

          // library_item
          BottomNavigationBarItem(
              label: 'Library',
              icon: Icon(Icons.library_books_outlined)
          ),


          // profile_item
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outline)
          ),
        ],
      ),
    );
  }
}
