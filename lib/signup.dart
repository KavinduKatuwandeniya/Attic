import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                fit: BoxFit.fill,
                height: 120.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: new Row(
                  children: [
                    Text(
                      'Signup',
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
                                borderRadius: BorderRadius.circular(100.0)),
                            labelText: 'Name ',
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
                            labelText: 'Email ',
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
                            labelText: 'Password',
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
                            labelText: 'Confirm Password',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Color(0xFFFF5F5F),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),side: BorderSide(color: Colors.red)),
                      onPressed: () {Navigator.of(context).pushNamed('/Login');},
                      child: const Text('Signup using Google',
                          style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
