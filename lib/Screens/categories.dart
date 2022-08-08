import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          title: Text('Categories'),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://www.nicepng.com/png/detail/61-613843_graphic-design-website-design-icon-png.png',
                        fit: BoxFit.cover)),
              ),

              /* CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage: NetworkImage(
                  'https://www.nicepng.com/png/detail/61-613843_graphic-design-website-design-icon-png.png',
                ),
              ),*/
              title: Text(
                'Graphic Design',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Logo and brand designing'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://www.big-red-digital.com/images/blogimages/digital-marketing-icon.jpg',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Digital Marketing',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Social Media Marketing'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1522881451255-f59ad836fdfb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d3JpdGluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Writing And Translation',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Articles & Blog Posts'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://www.awn.com/sites/default/files/styles/large_featured/public/image/featured/1050898-view-conference-2019-celebrating-best-animation-vfx-and-visual-storytelling.jpg?itok=HcTq6cXP',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Video and Animation',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('WhiteBoard & Animated Explainer, Video Editing'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://content.techgig.com/thumb/msid-76220523,width-860,resizemode-4/4-Secrets-to-become-a-professional-programmer.jpg?140622',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Programming & Tech',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Mobile App, Website builder'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://access2eic.eu/wp-content/uploads/2020/09/ma4rket.jpg',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Business',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Virtual Assistant,Market Research'),
            ),
            Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 74,
                  minHeight: 74,
                  maxWidth: 74,
                  maxHeight: 74,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        'https://www.matillion.com/wp-content/uploads/2020/11/database-1200-1024x543.jpg',
                        fit: BoxFit.cover)),
              ),
              title: Text(
                'Data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Databases, Data Processing'),
            ),
          ],
        ));
  }
}
