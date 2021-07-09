import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Programdetails.dart';
import 'package:page_transition/page_transition.dart';

class Frame2 extends StatefulWidget {
  @override
  _Frame2State createState() => _Frame2State();
}

bool bookMarkPressed = false;

class _Frame2State extends State<Frame2> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: h * 0.6,
            width: w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Frame2Background.jpg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, h * 0.04, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: h * 0.12, right: w * 0.3),
            child: Container(
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Jane Doe",
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.08)),
                    TextSpan(
                        text: "\nNew York, USA",
                        style: TextStyle(
                          color: Colors.grey[800],
                        )),
                    TextSpan(
                        text:
                            "\n\nLldf sald a lsoa ileas feiaefl ielaskfd asl eifjadslfd as;l dfaowi eflsdjd a foeals dao fsoawe isla; dkals dfoa welsadkj alwie soew iaeflsd fk;",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        ))
                  ]))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.35),
            child: Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '242',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: w * 0.05)),
                    TextSpan(
                        text: '\n Post',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: w * 0.03))
                  ])),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: ' 187k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: w * 0.05)),
                    TextSpan(
                        text: '\nFollowers',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: w * 0.03))
                  ]))
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.45),
            child: Container(
              width: w,
              decoration: BoxDecoration(
                color: HexColor('#171824'),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.06),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Classes',
                        style: TextStyle(
                            fontSize: w * 0.08,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.1),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                      children: [
                        ClassesCard(w, h),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        ClassesCard(w, h),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        ClassesCard(w, h),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        ClassesCard(w, h),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ClassesCard(double w, double h) {
    return Container(
      width: w * 0.9,
      decoration: BoxDecoration(
        color: HexColor('#222332'),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.only(left: w * 0.08, top: w * 0.05, bottom: w * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#6A40F3'),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  'NEW',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'AERIAL WORKOUTS',
                style: TextStyle(
                    color: HexColor('#6A40F3'), fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: w * 0.22,
              ),
              IconButton(
                icon: Icon(
                  (bookMarkPressed) ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (bookMarkPressed) {
                      bookMarkPressed = false;
                    } else {
                      bookMarkPressed = true;
                    }
                  });
                },
              )
            ],
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
            height: h * 0.01,
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
                    color: HexColor('#6A40F3'), shape: BoxShape.circle),
                padding: EdgeInsets.all(w * 0.05),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jane Doe',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Aerial Workouts',
                    style: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: w * 0.20,
              ),
              TextButton(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        border: Border.all(color: HexColor('#6A40F3'))),
                    child: Text(
                      'Play',
                      style: TextStyle(
                          color: HexColor('#6A40F3'),
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.1),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: ProgramDetails(),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 625)));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
