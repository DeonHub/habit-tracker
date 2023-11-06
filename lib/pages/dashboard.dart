import 'package:flutter/material.dart';
import 'package:tracker/globals.dart';
import 'package:tracker/pages/widgets/achievements.dart';
import 'package:tracker/pages/widgets/add_habit.dart';
import 'package:tracker/pages/widgets/profile.dart';
import 'package:tracker/pages/widgets/home.dart';
import 'package:tracker/pages/widgets/explore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  static const route = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String username = 'Bloody';
  
  int _currentIndex = 0; // Index for the current selected tab
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the controller when not in use
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final message = ModalRoute.of(context)!.settings.arguments;
    final message = ModalRoute.of(context)!.settings.arguments
        as RemoteMessage?; // This assumes arguments can be cast to RemoteMessage

    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomePage(username: username),
          ExplorePage(),
          AddHabit(),
          Achievements(),
          ProfilePage(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // _pageController.animateToPage(
          //   index,
          //   duration: Duration(milliseconds: 300),
          //   curve: Curves.easeInOut,
          // );

          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: _currentIndex == 0 ? baseColor : Colors.black,
                size: _currentIndex == 0 ? 30 : 24),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,
                color: _currentIndex == 1 ? baseColor : Colors.black,
                size: _currentIndex == 1 ? 30 : 24),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,
                color: _currentIndex == 2 ? baseColor : Colors.black,
                size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined,
                color: _currentIndex == 3 ? baseColor : Colors.black,
                size: _currentIndex == 3 ? 30 : 24),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _currentIndex == 4 ? baseColor : Colors.black,
                size: _currentIndex == 4 ? 30 : 24),
            label: "",
          ),
        ],
      ),
    );
  }
}
