import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mitness/Pages/Page2.dart';
import 'package:page_transition/page_transition.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              child: Page2(),
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 625)));
    });
    return Stack(
      children: [
        Image.asset(
          "assets/img1.png",
          height: h,
          width: w,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    child: Image.asset(
                      'assets/icon.png',
                      height: h / 5,
                      width: h / 5,
                    ),
                  ),
                ),
                SizedBox(height: h/2.3,),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Train with Mitness',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: h/42,
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
