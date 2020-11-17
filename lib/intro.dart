import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'menu.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Intro();
  }
}

class _Intro extends State<Intro> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(new Slide(
      title: "What is Attic?",
      styleTitle: TextStyle(fontSize: 30.0, color: Color(0xFF754800)),
      description:
          "Attic is a AR powered tool designed to give its you the capability to design your interior space with hundreds of furniture designs, wallpapers and ornaments in the marketplace of their choosing with the use of your camera.",
      styleDescription: TextStyle(fontSize: 20.0, color: Color(0xFF754800)),
      pathImage: "images/intro.png",
    ));
    slides.add(new Slide(
      title: "Step 01",
      styleTitle: TextStyle(fontSize: 30.0, color: Color(0xFF754800)),
      description:
          "After opening the camera place a chair on the background clearly and wait until the system automatically calibrate your surroundings. ",
      styleDescription: TextStyle(
        color: Color(0xFF754800),
        fontSize: 20.0,
      ),
      pathImage: "images/step1.png",
    ));
    slides.add(new Slide(
      title: "Step 02",
      styleTitle: TextStyle(fontSize: 30.0, color: Color(0xFF754800)),
      description:
          "Now you are ready to use. Direct your camera towards any empty space where you want to have any furniture or walls to preview wallpapers and change colors.",
      styleDescription: TextStyle(
        color: Color(0xFF754800),
        fontSize: 20.0,
      ),
      pathImage: "images/step2.png",
    ));
    slides.add(new Slide(
      title: "Step 03",
      styleTitle: TextStyle(fontSize: 30.0, color: Color(0xFF754800)),
      description:
          "You're almost at the there! Select the furniture you want, get a quotations, place an order and pay a advance fee through this app with few taps on your phone.",
      styleDescription: TextStyle(
        color: Color(0xFF754800),
        fontSize: 20.0,
      ),
      pathImage: "images/step3.png",
    ));
  }

  void onDoneSwipe() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }
  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        color: Color(0xFFFFF1D5),
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.left,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 04),
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.left,
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              new Divider(
                color: Colors.black,
                endIndent: 20,
                indent: 20,
                height: 20,
                thickness: 1,
              ),
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: 425.0,
                height: 425.0,
              )),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IntroSlider(
          // List slides
          slides: this.slides,
          // Dot indicator
          colorDot: Color(0xffffcc5c),
          sizeDot: 13.0,

          // Tabs
          listCustomTabs: this.renderListCustomTabs(),
          backgroundColorAllSlides: Colors.white,
          refFuncGoToTab: (refFunc) {
            this.goToTab = refFunc;
          },

          // Show or hide status bar
          shouldHideStatusBar: true,
          onDonePress:(){Navigator.push(context,MaterialPageRoute(builder: (context) => menu()));},
          colorActiveDot:Color(0xFF754800),
          // On tab change completed
          colorDoneBtn: Color(0xFF754800),
          onTabChangeCompleted: this.onTabChangeCompleted,
        ),
      ),
    );
  }
}
