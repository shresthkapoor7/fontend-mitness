import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitness/Pages/Trainee/Login.dart';
import 'package:mitness/Pages/Instructor/SignUpIn.dart';
import 'package:mitness/Pages/Trainee/SignupPage.dart';
import 'package:page_transition/page_transition.dart';

class Page3 extends StatelessWidget {
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 35),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: LoginPage(),
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 200)));
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(
                        fontSize: h / 35,
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 12,
              ),
              Text(
                "Identify\nYourself",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: h / 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: w / 1.25, height: h / 13),
                  child: ElevatedButton(
                    child: Text(
                      'Trainer',
                      style: TextStyle(fontSize: h / 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: SignUpIn(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfff96c8f),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h / 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: w / 1.25, height: h / 13),
                  child: ElevatedButton(
                    child: Text(
                      'Trainee',
                      style: TextStyle(fontSize: h / 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: SignUp(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200)));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffC59AD6),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
