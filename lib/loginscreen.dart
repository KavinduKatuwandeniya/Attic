
import 'package:attic/intro.dart';
import 'package:attic/introinitial.dart';
import 'package:attic/menu.dart';
import 'package:attic/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1D5),
      body: Container(
        child: Column(
      children: [
        Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              './images/logo3.png',
              width: 120.0,
              fit: BoxFit.contain,
              height: 120.0,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.galada(
                      textStyle:
                      TextStyle(color: Colors.brown.shade800, fontSize: 26.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFFFE0B0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),borderSide: BorderSide(color: Colors.redAccent.shade700)),
                          labelText: 'User Name ',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                          labelText: 'Password ',
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          new InkWell(
                              child: new Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,fontSize: 16.0,color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                              ),
                              onTap: () => launch(
                                  'https://docs.flutter.io/flutter/services/UrlLauncher-class.html')),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  new ButtonTheme(
                    minWidth: 210,
                    child: RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Color(0xFFFF3232),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),side: BorderSide(color: Color(0xFFFF3232))),
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => IntroIn()));},
                      child: const Text('Login',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                  RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0x00FF3232),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),side: BorderSide(color: Color(0x00FF3232))),
                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => IntroIn()));},
                    child: const Text('Login using Google',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                  new Row(
                    children: [
                      new Text(
                        'Don\'t have a Account?',
                        style: TextStyle(
                            decoration: TextDecoration.none,fontSize: 16.0,color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                      ),
                      new InkWell(
                        child: Text(
                          ' Signup From Here', style: TextStyle(decoration: TextDecoration.underline, fontSize: 16.0,color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                        ),

                        onTap: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );},
                      ),

                    ],

                  ),

                ],
              ),
            ),



          ],
        ),
      ),
        Row(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
            Container(
              child: Image(image: AssetImage('images/andnew.png') , width: 150,),
            ),
            Container(

              child:Text("Copyright 2020\nAll Rights Reserved",style: TextStyle(fontSize: 12, color: Color(0xFFC06D00)),),

            ),
          ],
        )]),
      )
    );
  }
}
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint linePaint = Paint()..strokeWidth = 2;
    linePaint.color=Color(0X4F754800);
    Paint linePaint2 = Paint()..strokeWidth = 2;
    linePaint2.color=Color(0X7F754800);
    canvas.drawLine(Offset(30, 0), Offset(30, 400), linePaint);

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}


