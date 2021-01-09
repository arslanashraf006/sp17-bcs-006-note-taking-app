import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 200.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/arslan.jpg'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Arslan Ashraf',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 500.0,
            height: 20.0,
            child: Divider(
              color: Colors.white,
              thickness: 5.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text(
                'Reg# SP17-BCS-006',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
// TODO Implement this library.
