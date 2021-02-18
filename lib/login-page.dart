import 'package:flutter/material.dart';
import 'package:loginpage_test/signup-page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue[200],
                Colors.blueAccent[700],
                Colors.blue[900],
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
              ],
            ),
          ),
        ));
  }
}