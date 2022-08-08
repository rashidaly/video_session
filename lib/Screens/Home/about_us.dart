
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
            child: Text('About Us',

            style: TextStyle(
              backgroundColor: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 45.0,
              color: Colors.white

            ),
            ),

          ),
       Text('Our Mission',

            style: TextStyle(
                backgroundColor: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 290),
            child: Text('The reason we stay loyal to brands is because of their values. '
                'The best brands combine physical, emotional, '
                'and logical elements into '
                'one exceptional customer (and employee) '
                'experience that you value as '
                'much as they do.',

              style: TextStyle(
                  //backgroundColor: Colors.a,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Colors.black

              ),
            ),
          ),


        ],

      ),
    );
  }
}
