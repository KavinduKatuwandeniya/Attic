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
        child: Padding(
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Color(0xFFFF5F5F),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),side: BorderSide(color: Colors.red)),
                      onPressed: () {Navigator.of(context).pushNamed('/Access');},
                      child: const Text('Login using Google',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              /* Container(
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          './images/and.png',
                          width: 200.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                      ],
                    )
                  ],
                ),
              ) */
            ],
          ),
        ),
      ),
    );
  }
}
