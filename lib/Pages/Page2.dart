import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitness/Pages/Page3.dart';
import 'package:page_transition/page_transition.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
          body: ListView(
            shrinkWrap: true,

            children: [
              Container(
                height: h/4.5,
                width: w,
                child: Image.asset('assets/img2.png',),
              ),
                Container(
                  height: h/1.45,
                  width: w/1.2,
                  child: Image.asset('assets/img3.png',),
                )
            ],
          ),
        ),
        Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent,Colors.black.withOpacity(0.65)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: w/1.25, height: h/15) ,
              child: ElevatedButton(
                child: Text('Start Training',
                style: TextStyle(fontSize: h/50),),
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: Page3(),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 200)));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xfff96c8f),
                ) ,
              ),
            ),
          )
        )
      ],
    );
  }
}

