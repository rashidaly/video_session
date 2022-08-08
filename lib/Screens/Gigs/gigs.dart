
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class CreateGigs extends StatefulWidget {


  @override
  _CreateGigsState createState() => _CreateGigsState();
}

class _CreateGigsState extends State<CreateGigs> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController proffesion = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController budget1 = TextEditingController();
  TextEditingController budget2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text('Gigs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(

             controller: fName,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(


                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'First Name'

              ),
            ),
            TextField(
              controller: lName,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'Last Name'

              ),
            ),
            TextField(
              controller: proffesion,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.work),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'Job Title'
              ),
            ),
            TextField(
              controller: country,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.language),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'Country Name'
              ),
            ),
            TextField(
              controller: language,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.account_balance_wallet_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'Languages'
              ),
            ),
            Text('Budget',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: budget1,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'From Rs...'
              ),
            ),
            Text('Upto', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            TextField(
              controller: budget2,

              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: kPrimaryColor, width: 2),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  hintText: 'Upto Rs...',

              ),
            ),
          ],


        ),
      ),
    );
  }
}
