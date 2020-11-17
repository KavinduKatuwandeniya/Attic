import 'package:attic/intro.dart';
import 'package:attic/options.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math' as math;

class menu extends StatefulWidget {
  @override
  _Menu createState() => new _Menu();
}

class _Menu extends State<menu>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close_rounded, color: Color(0xFFC06D00), size: 50, ),
                  onPressed: ()=> exit(0),
                )
              ],
            backgroundColor:  Color(0xFFFFCD8C),
            automaticallyImplyLeading: false,

            flexibleSpace: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20,0,0,0),
                  child: Image.asset("images/logo4.png",  alignment: Alignment.topLeft,),
                ),


              ],
            )
          )
      ),
      body: new Container(
        color: Color(0xFFFFCD8C),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xFFFFCD8C),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return CustomPaint(
                          painter: MyPainter(),
                          size: Size(constraints.maxWidth, constraints.maxHeight),
                        );
                      },


                    ),
                    ),
                  ),
              ],
            )),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                      width: 400,
                      color: Color(0xFFFFCD8C),
                      child: Column(
                        children: [
                          FlatButton(onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Intro()),
                                );
                              },

                              child: Text("HOW TO USE",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFC06D00)),
                              ),
                            color: Color(0x00FFCD8C),

                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0,10,10,10)),
                          FlatButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Options()),
                            );
                          },

                            child: Text("HOME",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFC06D00)),
                            ),
                            color: Color(0x00FFCD8C),

                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0,10,10,10)),
                          FlatButton(onPressed: null,

                            child: Text("ACCOUNT DETAILS",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFC06D00)),
                            ),
                            color: Color(0x00FFCD8C),

                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0,10,10,10)),
                          FlatButton(onPressed: null,

                            child: Text("PAYMENT DETAILS",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFC06D00)),
                            ),
                            color: Color(0x00FFCD8C),

                          ),
                          Padding(padding: EdgeInsets.only(bottom: 100)),
                          LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return CustomPaint(
                                painter: MyHorizontalPainter(),
                                size: Size(constraints.maxWidth, 10),
                              );
                            },


                          ),


                          Row(
                            children: [
                              Padding(padding: EdgeInsets.fromLTRB(40, 130, 20, 10)),
                              IconButton(
                                icon: Icon(Icons.logout, color: Color(0xFFC06D00), size: 35, ),
                                onPressed: ()=> exit(0),
                              ),
                              Text("  LOG OUT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0XFFC06D00)),),

                            ],

                          ),
                          LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              return CustomPaint(
                                painter: MyHorizontalPainter2(),
                                size: Size(constraints.maxWidth, 10),
                              );
                            },


                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),],)
      ),
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
    canvas.drawLine(Offset(60, 250), Offset(60, 600), linePaint2);
    canvas.drawLine(Offset(90, 40), Offset(90, 500), linePaint);

  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}

class MyHorizontalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint linePaint = Paint()..strokeWidth = 2;
    linePaint.color=Color(0X4F754800);
    canvas.drawLine(Offset(30, 50), Offset(260, 50), linePaint);
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}
class MyHorizontalPainter2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint linePaint = Paint()..strokeWidth = 3;
    linePaint.color=Color(0X4F754800);
    canvas.drawLine(Offset(30, -25), Offset(260, -25), linePaint);
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}