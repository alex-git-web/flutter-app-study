import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screens/home/home_screen.dart';
import 'package:learning_app/screens/profile/profile_screen.dart';

class ScreenWrapper extends StatefulWidget {

  @override
  _ScreenWraperState createState() => _ScreenWraperState();
}

class _ScreenWraperState extends State<ScreenWrapper> {
  int _currentScreenIndex = 0;
  
  final screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: screens[_currentScreenIndex],
     bottomNavigationBar: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: lightGray.withOpacity(0.5)
          )
        ]
      ),
      child: SizedBox(
        height: 55, 
          child:BottomNavigationBar( 
            selectedFontSize: 11, 
            unselectedFontSize: 11,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Save',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notify',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Account',
              ),
            ],
            currentIndex: _currentScreenIndex,
            selectedItemColor: darkBlue,
            unselectedItemColor: lightGray,
            onTap: (index) => setState(() => _currentScreenIndex = index)
            ),
          ),
        )
      );
  }
}

