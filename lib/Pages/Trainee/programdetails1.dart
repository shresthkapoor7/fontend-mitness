import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

class Followers {
  final String image;
  final String name;

  Followers(this.image, this.name);
}

class ProgramDetails1 extends StatefulWidget {
  @override
  _ProgramDetails1State createState() => _ProgramDetails1State();
}

class _ProgramDetails1State extends State<ProgramDetails1> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      body: Container(
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: h * 0.06),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Program Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.07,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                  SizedBox(height: h * 0.04),
                  Center(child: ClassesCardProgramDetails(w, h)),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: HexColor('#171824'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side:
                              BorderSide(color: Colors.grey.shade800, width: 1),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: w * 0.05,
                              left: w * 0.05,
                              top: h * 0.015,
                              bottom: h * 0.015),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add List',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: w * 0.05),
                      RaisedButton(
                        color: HexColor('#171824'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side:
                              BorderSide(color: Colors.grey.shade800, width: 1),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: w * 0.06,
                              left: w * 0.06,
                              top: h * 0.014,
                              bottom: h * 0.015),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Container(
                    decoration: BoxDecoration(color: HexColor('#222332')),
                    padding: EdgeInsets.only(
                        left: w * 0.05, top: w * 0.02, bottom: w * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: w * 0.03),
                            Text(
                              'Download Workout',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: w * 0.01),
                          child: CupertinoSwitch(
                            trackColor: Colors.black,
                            activeColor: Colors.grey,
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.02),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: w * 0.05),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.02),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non viverra nulla. Nam ullamcorper ullamcorper eros eu volutpat. Sed scelerisque',
                          style:
                              TextStyle(color: Colors.grey, fontSize: w * 0.04),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See More Details',
                          style: TextStyle(
                            color: HexColor('#AAB2BA'),
                            fontSize: w * 0.04,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: HexColor('#222332')),
                        padding: EdgeInsets.only(
                            left: w * 0.05, top: w * 0.04, bottom: w * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: w * 0.02,
                                ),
                                Text(
                                  'Duration',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: w * 0.045),
                                ),
                              ],
                            ),
                            Text(
                              '24 min  ',
                              style: TextStyle(
                                  color: Colors.white, fontSize: w * 0.045),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.5,
                        child: Divider(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: HexColor('#222332')),
                        padding: EdgeInsets.only(
                            left: w * 0.05, top: w * 0.04, bottom: w * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: w * 0.02,
                                ),
                                Text(
                                  'Calories',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: w * 0.045),
                                ),
                              ],
                            ),
                            Text(
                              '500  ',
                              style: TextStyle(
                                  color: Colors.white, fontSize: w * 0.045),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        color: HexColor('#F96C8F'),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: w * 0.06,
                              right: w * 0.06,
                              top: w * 0.05,
                              bottom: w * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Start Training',
                                style: TextStyle(
                                    color: Colors.white, fontSize: w * 0.045),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ClassesCardProgramDetails(double w, double h) {
  return Container(
    width: w * 0.9,
    decoration: BoxDecoration(
      color: HexColor('#222332'),
      borderRadius: BorderRadius.all(Radius.circular(10)),
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              width: w * 0.03,
            ),
            Text(
              'AERIAL WORKOUTS',
              style: TextStyle(
                  color: HexColor('#F96C8F'), fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.02,
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
                  color: HexColor('#F96C8F'), shape: BoxShape.circle),
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
                SizedBox(height: h * 0.005),
                Text(
                  'Aerial Workouts',
                  style: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              width: w * 0.22,
            ),
          ],
        ),
        SizedBox(
          height: h * 0.007,
        ),
      ],
    ),
  );
}
