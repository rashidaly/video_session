import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/profile.dart';
import 'package:flutter_auth/constants.dart';

import 'home_screen.dart';
import 'message.dart';
import 'notification.dart';

class CurvedNavigation extends StatefulWidget {
  @override
  _CurvedNavigationState createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    HomeScreenmessage(),
    NotificationPage(),
    SettingsPage(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: kPrimaryColor,
          backgroundColor: kPrimaryLightColor,
          height: 70.0,
          items: <Widget>[
            Icon(Icons.home, color: Colors.white, size: 20.0),
            Icon(Icons.message, color: Colors.white, size: 20.0),
            Icon(Icons.notifications_active, color: Colors.white, size: 20.0),
            Icon(Icons.person_pin, color: Colors.white, size: 20.0),
          ],
          animationDuration: Duration(milliseconds: 200),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: onTappedBar),
    );
  }
}
