import 'package:attic/intro.dart';
import 'package:flutter/cupertino.dart';
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
            backgroundColor:  Color(0xFFFFCF92),
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
        color: Color(0xFFFFCF92),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xFFFFCF92),
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
                      color: Color(0xFFFFCF92),
                      child: Column(
                        children: [
                          FlatButton(onPressed: null,

                              child: Text("HOW TO USE",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFC06D00)),
                              ),
                            color: Color(0x00FFCD8C),

                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0,10,10,10)),
                          FlatButton(onPressed: null,

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
                              Text("  LOG OUT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

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
    canvas.drawLine(Offset(25, 0), Offset(25, 400), linePaint);
    canvas.drawLine(Offset(50, 250), Offset(50, 600), linePaint2);
    canvas.drawLine(Offset(75, 40), Offset(75, 500), linePaint);

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
    canvas.drawLine(Offset(70, 50), Offset(220, 50), linePaint);
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
    canvas.drawLine(Offset(70, -25), Offset(220, -25), linePaint);
  }
  @override
  bool shouldRepaint(CustomPainter old) {
    return true;
  }
}