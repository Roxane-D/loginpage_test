import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage_test/signup-page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                inputsSection,
                ButtonWidget(),
                bottomSection,
                forgetButton,
              ],
            ),
          ),
        ),
      ),
    );
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
  margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
  child: Text(
    'Page de connexion Flutter',
    style: GoogleFonts.comfortaa(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);

Widget inputsSection = Container(
  margin: EdgeInsets.all(20),
  child: Column(
    children: [
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.blue[900],
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Pseudo',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white30),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue[900],
              ),
            ),
            Container(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      textColor: Colors.blue[900],
      padding: EdgeInsets.fromLTRB(125, 15, 125, 15),
      child: Text(
        'Connexion'.toUpperCase(),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

Widget bottomSection = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Pas encore de compte ?',
        style: GoogleFonts.comfortaa(color: Colors.white),
      ),
      SignupButton(),
    ],
  ),
);

class SignupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      child: Text(
        'Inscrivez-vous'.toUpperCase(),
        style: GoogleFonts.comfortaa(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

Widget forgetButton = Container(
  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
  child: FlatButton(
    onPressed: () {},
    child: Text(
      'Mot de passe oublié ?',
      style: GoogleFonts.comfortaa(
          color: Colors.white, fontWeight: FontWeight.bold),
    ),
  ),
);
