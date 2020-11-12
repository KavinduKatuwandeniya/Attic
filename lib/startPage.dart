
import 'dart:async';
//import 'dart:js';

import 'package:attic/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Start> {
  @override
  void initState(){
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: initScreen(context),
    );
  }
  startTime() async{
    var duration=Duration(seconds: 5);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacement(this.context, MaterialPageRoute(
        builder: (context)=>Intro()));
  }
  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Container(
          color: const Color(0xFFFFF1D5),
          child: new Column(
            children: [
              new Padding(padding: EdgeInsets.fromLTRB(10, 170, 10, 10),),
              new Image.asset('images/logo3.png', width: 270, height: 270 ),
              new Padding(padding: EdgeInsets.fromLTRB(10, 140, 10, 10)
              ),
              new SizedBox(

                width: 380,
                child: new LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Color(0xFFC38C45)),
                  backgroundColor: Color(0xFFFFCF92),
                  minHeight: 8,


                ),),
              new Column(
                  children: [Image.asset('images/and.png'),]
              )
            ],

          ),
        ),
      ),
    );
  }

}