import 'package:attic/intro.dart';
import 'package:attic/menu.dart';
import 'package:attic/options.dart';
import 'package:attic/startPage.dart';
import 'package:flutter/material.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/Home': (BuildContext context) => new Start()

      },
      home: new menu(), //first page displayed
    );
  }
}
