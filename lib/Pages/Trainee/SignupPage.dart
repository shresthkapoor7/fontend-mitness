import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Login.dart';
import 'Page4.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

bool obscureText = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: HexColor('#171824'),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
        ),
        body: Container(
          height: h,
          width: w,
          color: HexColor('#171824'),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in to Mitness",
                    style: TextStyle(fontSize: w * 0.1, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "By signing up you agree to ",
                          style: TextStyle(
                              color: Colors.grey, fontSize: w * 0.028)),
                      TextSpan(
                          text: "Terms of Use ",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: w * 0.028,
                              decoration: TextDecoration.underline)),
                      TextSpan(
                          text: "and ",
                          style: TextStyle(
                              color: Colors.grey, fontSize: w * 0.028)),
                      TextSpan(
                          text: "Privacy Notice ",
                          style: TextStyle(
                              color: Colors.purple,
                              decoration: TextDecoration.underline,
                              fontSize: w * 0.028)),
                    ]),
                  ),
                  SizedBox(height: h * 0.02),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            primary: Colors.white,
                            elevation: 0),
                        child: Container(
                            height: h * 0.07,
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: w * 0.07,
                                  width: w * 0.07,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/googlelogo.png'))),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                    fontSize: w * 0.04,
                                    color: HexColor('#171824'),
                                  ),
                                ),
                              ],
                            ))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginPage(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200)));
                        },
                      ),
                    ),
                  ),
                  Center(
                      child: Text("\nor",
                          style: TextStyle(
                              color: Colors.grey, fontSize: w * 0.04))),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textField(h: h, w: w / 2, hintText: "First Name"),
                        _textField(h: h, w: w / 2, hintText: "Last Name"),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textField(h: h, w: w / 2, hintText: "Height"),
                        _textField(h: h, w: w / 2, hintText: "Weight"),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textField(h: h, w: w / 2, hintText: "Date of Birth"),
                        _textField(h: h, w: w / 2, hintText: "Gender"),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: _textField(h: h, w: w * 1.07, hintText: "Phone"),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#8D99B2'), width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: h * 0.07,
                        width: w * 0.856,
                        padding: EdgeInsets.only(left: 15),
                        child: Center(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                              style: TextStyle(color: Colors.white)),
                        )),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#8D99B2'), width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: h * 0.07,
                        width: w * 0.856,
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                  obscureText: obscureText,
                                  style: TextStyle(color: Colors.white)),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: (obscureText)
                                      ? Colors.grey
                                      : HexColor("#F96C8F"),
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (obscureText) {
                                      obscureText = false;
                                    } else {
                                      obscureText = true;
                                    }
                                  });
                                })
                          ],
                        )),
                  ),
                  SizedBox(height: h * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#8D99B2'), width: 0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: h * 0.07,
                        width: w * 0.856,
                        padding: EdgeInsets.only(left: 15),
                        child: Center(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.vpn_key,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Refferal code",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                              style: TextStyle(color: Colors.white)),
                        )),
                  ),
                  SizedBox(height: h * 0.02),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            primary: HexColor("#F96C8F"),
                            elevation: 0),
                        child: Container(
                            height: h * 0.07,
                            child: Center(
                                child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: w * 0.04),
                            ))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: QR(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200)));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _textField({double h = 0, double w = 0, required String hintText}) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: HexColor('#8D99B2'), width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: h * 0.07,
        width: w * 0.8,
        padding: EdgeInsets.only(left: 15),
        child: Center(
          child: TextFormField(
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
              style: TextStyle(color: Colors.white)),
        ));
  }
}
