import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFF1D5),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              './images/logo3.png',
              width: 120.0,
              fit: BoxFit.contain,
              height: 120.0,
            ),
             SizedBox(
                    height: 12.0,
                  ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFFFE0B0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  //  new Text('Allow Attic to use your camera'),
                  Text(
                    'Allow Attic to use your camera',
                    style: GoogleFonts.robotoSlab(
                      textStyle: TextStyle(
                          color: Colors.brown.shade800,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.8,
                  ),
                  // new Text('( Attic won\'t work without access to your camera )'),
                  Text(
                    '( Attic won\'t work without access to your camera )',
                    style: GoogleFonts.breeSerif(
                      textStyle: TextStyle(
                          color: Colors.brown.shade800, fontSize: 14.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFFFF5F5F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () {},
                        child: const Text('Deny',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFF73CA61),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () {},
                        child: const Text('Allow',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
             SizedBox(
                    height: 18.0,
                  ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFFFE0B0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  //  new Text('Allow Attic to use your camera'),
                  Text(
                    'Allow Attic to access your galerry',
                    style: GoogleFonts.robotoSlab(
                      textStyle: TextStyle(
                          color: Colors.brown.shade800,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.8,
                  ),
                  // new Text('( Attic won\'t work without access to your camera )'),
                  Text(
                    '( Attic won\'t work without access to your gallery )',
                    style: GoogleFonts.breeSerif(
                      textStyle: TextStyle(
                          color: Colors.brown.shade800, fontSize: 14.0),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFFFF5F5F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () {},
                        child: const Text('Deny',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFF73CA61),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () {},
                        child: const Text('Allow',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        )));
  }
}
