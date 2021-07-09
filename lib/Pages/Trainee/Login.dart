import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Drawer.dart';
import 'package:mitness/Pages/Trainee/drawer2.dart';
import 'package:mitness/Pages/Trainee/hardik.dart';
import 'forgotpassword.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: HexColor('#171824'),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
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
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/icon.png'),
                            height: 100,
                            width: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              'Welcome back to Mitness',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'TTNorms',
                                fontSize: 21,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1,
                              ),
                            ),
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
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              ),
                                              hintText: "Password",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none),
                                          obscureText: obscureText,
                                          style:
                                              TextStyle(color: Colors.white)),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: ForgotPassword(),
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 625)));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                  color: Color.fromRGBO(170, 178, 186, 1),
                                  fontFamily: 'TTNorms',
                                  fontSize: 17,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    primary: HexColor("#F96C8F"),
                                    elevation: 0),
                                child: Container(
                                    height: h * 0.07,
                                    width: w * 0.80,
                                    padding: EdgeInsets.only(left: 15),
                                    child: Center(
                                        child: Text(
                                      "Login",
                                      style: TextStyle(fontSize: w * 0.04),
                                    ))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: MyHomePage2(title: "title"),
                                          type: PageTransitionType.fade,
                                          duration:
                                              Duration(milliseconds: 200)));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.2449 * h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: h * 0.07),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              primary: Colors.white,
                              elevation: 0),
                          child: Container(
                              height: h * 0.07,
                              width: w * 0.80,
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
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
