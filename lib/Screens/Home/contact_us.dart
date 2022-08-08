

import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class ContactUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              height: 200,
                width: 150,
                child: Image.asset('assets/images/contact.png')),
          ),
          Container(
            color: kPrimaryLightColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.add_location),
                Text('Adress:', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Text('Islamabad Pakistan', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,

                ),
                ),
              ],
            ),
          ),

          Container(
            height: 100,
            width: 100,
            color: kPrimaryLightColor,
            child: Column(

              children: <Widget>[
                Icon(Icons.contact_mail),
                Text('Contact:', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Text('091452426', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
