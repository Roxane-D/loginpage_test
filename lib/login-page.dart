import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            flutterIcon,
            titleSection,
            textSection,
          ],
        ),
      ),
    ));
  }
}

Widget flutterIcon = Container(
  height: 250,
  width: 250,
  padding: EdgeInsets.all(30),
  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.1),
    borderRadius: BorderRadius.circular(70),
  ),
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 15,
          offset: Offset(0, 3),
        )
      ],
    ),
    child: Image.network(
        'https://secure.meetupstatic.com/photos/event/4/a/b/5/600_466219125.jpeg'),
  ),
);

Widget titleSection = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Flutter',
        style: GoogleFonts.exo(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      SizedBox(width: 3),
      Text(
        'Login',
        style: GoogleFonts.exo(
          fontSize: 40,
          color: Colors.lightGreenAccent[400],
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  margin: EdgeInsets.fromLTRB(0, 5, 0, 50),
  child: Text(
    'Page de connexion Flutter',
    style: GoogleFonts.comfortaa(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);
