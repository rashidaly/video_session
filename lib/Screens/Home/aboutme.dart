
import 'package:flutter/material.dart';

import '../../constants.dart';

class AboutPerson extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('User Information',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined,
              size: 30,
              ),
              title: Text('From'),
              subtitle: Text('Pakistan'),
            ),
            ListTile(
              leading: Icon(Icons.person_pin,
                size: 30,
              ),
              title: Text('Member Since'),
              subtitle: Text('2020'),
            ),
            ListTile(
              leading: Icon(Icons.call,
                size: 30,
              ),
              title: Text('Contact'),
              subtitle: Text('0999999999'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            Text('Languages',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            ListTile(
              leading: Icon(Icons.language,
                size: 30,
              ),
              title: Text('English'),
              subtitle: Text('Fluent'),
            ),
            ListTile(
              leading: Icon(Icons.language,
                size: 30,
              ),
              title: Text('Arabic'),
              subtitle: Text('Conversational'),
            ),
            ListTile(
              leading: Icon(Icons.language,
                size: 30,
              ),
              title: Text('Urdu'),
              subtitle: Text('Fluent'),
            ),
            ListTile(
              leading: Icon(Icons.language,
                size: 30,
              ),
              title: Text('German'),
              subtitle: Text('Fluent'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            Text('Skills',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            ListTile(
              leading: Icon(Icons.mobile_friendly,
                size: 30,
              ),
              title: Text('App Development'),
              subtitle: Text('Expert'),
            ),
            ListTile(
              leading: Icon(Icons.computer,
                size: 30,
              ),
              title: Text('Web Development'),
              subtitle: Text('Beginner'),
            ),
            ListTile(
              leading: Icon(Icons.desktop_mac,
                size: 30,
              ),
              title: Text('Desktop Development'),
              subtitle: Text('Intermediate'),
            ),

          ],
        ),
      ),
    );
  }
}
