import 'package:flutter/material.dart';
import '../../constants.dart';

class EarningDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text('Earnings Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Card(
                  shadowColor: kPrimaryColor,
                  elevation: 8,
                  color: kPrimaryLightColor,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "\$0",
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          Text(
                            'Personal Balance',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.0),
            Text(
              'Analytics',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                color: kPrimaryLightColor,
                shadowColor: kPrimaryColor,
                elevation: 8,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Earning in September'),
                      trailing: Text(
                        '\$0',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text('Avg. Selling Price'),
                      trailing: Text(
                        '\$0',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text('Active Order'),
                      trailing: Text(
                        '0(\$0)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text('Available for Withdrawal'),
                      trailing: Text(
                        '\$0',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: Text('Complete Orders'),
                      trailing: Text(
                        '0(\$0)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),

        SizedBox(height: 20.0),
            Text(
              'Revenues',
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
          /*  Divider(
              color: kPrimaryColor,
              thickness: 1,
              height: 30,
            ),*/
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                color: kPrimaryLightColor,
                elevation: 8,
                shadowColor: kPrimaryColor,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('Cancelled Orders',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                    Divider(
                      color: kPrimaryColor,
                      thickness: 1,
                      height: 35,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('Pending Clearance',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                    Divider(
                      color: kPrimaryColor,
                      thickness: 1,
                      height: 35,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text('Withdraw',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                    Divider(
                      color: kPrimaryColor,
                      thickness: 1,
                      height: 35,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:40.0),
                          child: Text('Purchases',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                    Divider(
                      color: kPrimaryColor,
                      thickness: 1,
                      height: 35,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Cleared',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
