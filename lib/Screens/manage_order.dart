import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class ManageOrder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Manage Order'),
      ),
    );
  }
}
