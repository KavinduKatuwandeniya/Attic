import 'package:attic/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';
class Options extends StatefulWidget{
  @override
  _Options createState()=>new _Options();
}

class _Options extends State<Options>{
  final _picker=ImagePicker();
  PickedFile _image;
   getImage(ImageSource source) async{
     PickedFile image=await _picker.getImage(source: source);
     this.setState((){
       _image=image;
     });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
    child: AppBar(
    elevation: 0,
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.menu_rounded, color: Color(0xFFC06D00), size: 50, ),
    onPressed: (){

    }
    )
    ],
    backgroundColor:  Color(0xFFFFF1D5),
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
        color: Color(0xFFFFF1D5),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(5, 10, 0, 0)),
              RaisedButton(
              onPressed: () {
                getImage(ImageSource.camera);
              },
              color: Color(0XFFE78200),
                splashColor: Colors.black,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              size: 35.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
      ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 10)),
              RaisedButton(
                onPressed: () {
                },
                  shape: new CircleBorder(),
                  color: Color(0XFFE78200),
                splashColor: Colors.black,
                child: Icon(
                  Icons.photo_library_outlined,
                  color: Colors.white,
                  size: 35.0,
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 10)),
              RaisedButton(
                onPressed: () {},
                shape: CircleBorder(),
                color: Color(0XFFE78200),
                splashColor: Colors.black,
                child: Icon(
                  Icons.now_wallpaper_outlined,
                  color: Colors.white,
                  size: 35.0,
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 10, 10)),
              RaisedButton(
                onPressed: () {},
                color: Color(0XFFE78200),
                child: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 35.0,
                  color: Colors.white,

                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),

            ],
          )
        ),
    );

  }
}
