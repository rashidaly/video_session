import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          title: Text('Notification'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQurDezj3Ot5v4QHW9mN8cfhxJVRnbsTraTWA&usqp=CAU',
                ),
              ),
              title: Text('Alex Comment'),
              subtitle: Text('Hi there any way...'),
            ),
           Divider(
             color: kPrimaryColor,
             thickness: 1,
             height: 30,
           ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/glasses-girl-in-white-picture-id1089633230?k=6&m=1089633230&s=612x612&w=0&h=FUHE3jCQMIrC72Ux8-rz_z3mHDi2UB61gceLSKAxEwg=',
                ),
              ),
              title: Text('Rosey Text'),
              subtitle: Text('When you are going to...'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://cdn.wallpapersafari.com/36/59/tUjwWF.jpg',
                ),
              ),
              title: Text('Lily Reply'),
              subtitle: Text('Meeting will be...'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/portrait-concept-picture-id1016761216?k=6&m=1016761216&s=612x612&w=0&h=j-DyZTSqmnhoHKsJdGmiMPnungpHiq9UTrvx4UylMQI=',
                ),
              ),
              title: Text('Omer Call'),
              subtitle: Text('Omer Call you on...'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/young-man-standing-confidently-picture-id973481352?k=6&m=973481352&s=612x612&w=0&h=vI1bND7cA4GvBzzsDA4OZEvp2j0-H4xmTXxFG5TzH9o=',
                ),
              ),
              title: Text('John Text'),
              subtitle: Text('Hi i AM ON the way...'),
            ),

          ],
        ));
  }
}
