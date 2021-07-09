import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Account1.dart';
import 'package:mitness/Pages/Instructor/Followers.dart';
import 'package:mitness/Pages/Instructor/Frame2.dart';
import 'package:mitness/Pages/Instructor/Schedule.dart';
import 'package:page_transition/page_transition.dart';

class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  Center buildK(String e, StatefulWidget d) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              primary: HexColor("#F96C8F"),
              elevation: 0),
          child: Container(
              height: 50,
              width: 200,
              padding: EdgeInsets.only(left: 15),
              child: Center(
                  child: Text(
                e,
                style: TextStyle(fontSize: 20),
              ))),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    child: d,
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 625)));
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: HexColor('#171824'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildK("My Profile", MyAccount1()),
            buildK("My Schedule", MySchedule()),
            buildK("My Classes", Frame2()),
            buildK("My Followers", FollowersPage()),
          ],
        )
      ],
    );
  }
}
