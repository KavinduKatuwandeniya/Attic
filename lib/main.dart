import 'package:attic/intro.dart';
import 'package:attic/signup.dart';
import 'package:attic/startPage.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'camera.dart';






void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/Home': (BuildContext context) => new Start(),
        '/Login':(BuildContext context) => new Login(),
        '/Signup':(BuildContext context) => new Signup(),
        '/Access':(BuildContext context) => new Camera()
        
        

      },
      home: new Signup(), //first page displayed
    );
  }
}
