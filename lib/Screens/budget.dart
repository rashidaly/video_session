import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class MyBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Budget'),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(65.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: kPrimaryLightColor,
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(
                          'Basic',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Rs: 3000',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Basic one page design with upto 6 sections. '
                            'Website/landing page for startup or existing business'),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.lock_clock_outlined),
                          Text('2 Day Delivery')
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '1 Page',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Design Customization',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Responsive Design',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(65.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: kPrimaryLightColor,
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(
                          'Standard',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Rs: 5000',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Design or convert upto 5 pages with high quality responsive design.'
                            'Convert PSD to Elementor template'),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.lock_clock_outlined),
                          Text('5 Day Delivery')
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '5 Page',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Design Customization',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Responsive Design',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '5 Plugin Extension',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(65.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: kPrimaryLightColor,
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(
                          'Premium',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Rs: 9000',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Full website Design 8-10 pages.'
                            ' Convert PSD or any theme or web page by Elementor Pro'),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.lock_clock_outlined),
                          Text('8-10 Day Delivery')
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '10 Page',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Design Customization',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Responsive Design',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '5 Plugin Extension',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Content Upload',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
