//import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Trainee/programdetails1.dart';

import 'package:page_transition/page_transition.dart';
import 'Discover2.dart';

import 'programdetails2.dart';

class Followers {
  final String image;
  final String name;

  Followers(this.image, this.name);
}

class TempPage2 extends StatefulWidget {
  @override
  _TempPage2State createState() => _TempPage2State();
}

class _TempPage2State extends State<TempPage2> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    bool pressAttention = true;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: h * 0.3,
                width: w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ProgramDetailsImage.jpg'),
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.black, BlendMode.overlay))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: h * 0.06),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          // setState(() {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => PageTemp2()));
                          // });
                        },
                      ),
                      Text(
                        "Program Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.07,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.2),
                  Text(
                    'CATEGORY',
                    style: TextStyle(
                        fontSize: w * 0.045, color: HexColor('#F96C8F')),
                  ),
                  SizedBox(height: h * 0.005),
                  Text(
                    'Aerial Workouts',
                    style: TextStyle(
                        fontSize: w * 0.07,
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: h * 0.01),
                  ClassDetails(),
                  SizedBox(height: h * 0.02),
                  ClassDetails(),
                  SizedBox(height: h * 0.02),
                  ClassDetails(),
                  SizedBox(height: h * 0.02),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassDetails extends StatefulWidget {
  @override
  _ClassDetailsState createState() => _ClassDetailsState();
}

bool obscureText = false;

class _ClassDetailsState extends State<ClassDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.95,
      decoration: BoxDecoration(
        color: HexColor('#222332'),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.only(
          left: w * 0.08, top: w * 0.03, bottom: w * 0.05, right: w * 0.01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor('#F96C8F'),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: EdgeInsets.only(
                        left: w * 0.03,
                        right: w * 0.03,
                        top: h * 0.005,
                        bottom: h * 0.005),
                    child: Text(
                      'NEW',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.03,
                  ),
                  Text(
                    'AERIAL WORKOUTS',
                    style: TextStyle(
                      color: HexColor('#F96C8F'),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // new RaisedButton(
              //   child: new Text('Attention'),
              //   textColor: Colors.white,
              //   shape: new RoundedRectangleBorder(
              //     borderRadius: new BorderRadius.circular(30.0),
              //   ),
              //   color: pressAttention ? Colors.grey : Colors.blue,
              //   onPressed: () =>
              //       setState(() => pressAttention = !pressAttention),
              // ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: (obscureText) ? HexColor("#F96C8F") : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      if (obscureText) {
                        obscureText = false;
                      } else {
                        obscureText = true;
                      }
                    });
                  }),
              // IconButton(
              //   padding: EdgeInsets.all(0),
              //   icon: Icon(Icons.bookmark_border),
              //   color: HexColor('#F96C8F'),
              //   onPressed: () {},
              // ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Lift it again',
              style: TextStyle(
                  fontSize: w * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.1),
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Upper body • Weights',
              style: TextStyle(
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                  letterSpacing: 1.1),
            ),
          ),
          SizedBox(
            height: h * 0.007,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Beginner • 24 min\n',
              style: TextStyle(
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                  letterSpacing: 1.1),
            ),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: HexColor('#F96C8F'), shape: BoxShape.circle),
                padding: EdgeInsets.all(w * 0.05),
              ),
              SizedBox(
                width: w * 0.035,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jane Doe',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: h * 0.01),
                  Text(
                    'Aerial Workouts',
                    style: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: w * 0.2,
              ),
              Container(
                  height: h * 0.045,
                  width: w * 0.22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      border: Border.all(color: HexColor('#F96C8F'))),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: ProgramDetails1(),
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 200)));
                      },
                      child: Text(
                        'Play',
                        style: TextStyle(color: HexColor('#F96C8F')),
                      ))),
            ],
          ),
          SizedBox(
            height: h * 0.007,
          ),
        ],
      ),
    );
  }
}
