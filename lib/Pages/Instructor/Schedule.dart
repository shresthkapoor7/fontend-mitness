import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MySchedule extends StatefulWidget {
  @override
  _MyScheduleState createState() => _MyScheduleState();
}

class _MyScheduleState extends State<MySchedule> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      appBar: AppBar(
        backgroundColor: HexColor('#222332'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("My Schedule", style: TextStyle(fontSize: w * 0.06)),
        centerTitle: true,
      ),
      body: Container(
        width: w,
        height: h,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.only(left: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.02),
                    Text("Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold)),
                    ScheduleActivities('n', h, w),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              Container(
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.only(left: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.02),
                    Text("This Week",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.055,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: h * 0.02),
                    ScheduleActivities('M', h, w),
                    Text(
                      'T',
                      style: TextStyle(fontSize: w * 0.05, color: Colors.grey),
                    ),
                    ScheduleActivities('W', h, w),
                    Text(
                      'T',
                      style: TextStyle(fontSize: w * 0.05, color: Colors.grey),
                    ),
                    ScheduleActivities('F', h, w),
                    Text(
                      'T',
                      style: TextStyle(fontSize: w * 0.05, color: Colors.grey),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      'T',
                      style: TextStyle(fontSize: w * 0.05, color: Colors.grey),
                    ),
                    SizedBox(height: h * 0.04),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              Container(
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: HexColor('#232432'),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.02),
                    Text("This Month",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: w * 0.055,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int c = 0; c < 7; c++)
                          Container(
                            width: w * 0.11,
                            height: w * 0.11,
                            color: HexColor('#171824'),
                          )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int c = 0; c < 7; c++)
                          Container(
                            width: w * 0.11,
                            height: w * 0.11,
                            color: HexColor('#222332'),
                          )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int c = 0; c < 7; c++)
                          Container(
                            width: w * 0.11,
                            height: w * 0.11,
                            color: HexColor('#171824'),
                          )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int c = 0; c < 7; c++)
                          Container(
                            width: w * 0.11,
                            height: w * 0.11,
                            color: HexColor('#222332'),
                          )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int c = 0; c < 7; c++)
                          Container(
                            width: w * 0.11,
                            height: w * 0.11,
                            color: HexColor('#171824'),
                          )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ScheduleActivities(String day, double h, double w) {
  return Row(
    children: [
      (day != 'n')
          ? Text(
              day,
              style: TextStyle(fontSize: w * 0.05, color: Colors.grey),
            )
          : Container(),
      (day != 'n')
          ? SizedBox(
              width: w * 0.05,
            )
          : Container(),
      Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Text(
          'Yoga',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      SizedBox(
        width: w * 0.02,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Text(
          'Athletics',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      SizedBox(height: h * 0.08),
    ],
  );
}
