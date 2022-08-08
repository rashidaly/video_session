import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_auth/Screens/Home/message.dart';
import 'package:flutter_auth/Screens/Home/notification.dart';
import 'package:flutter_auth/Screens/Home/profile.dart';
import 'package:flutter_auth/Screens/Home/seller_home.dart';
import 'package:flutter_auth/Screens/manage_order.dart';
import '../constants.dart';
import 'package:flutter/material.dart';
class SellerNavigation extends StatefulWidget {
  @override
  _SellerNavigationState createState() => _SellerNavigationState();
}

class _SellerNavigationState extends State<SellerNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    SellerHome(),
    HomeScreenmessage(),
    ManageOrder(),
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
            Icon(Icons.pages, color: Colors.white, size: 20.0),
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
