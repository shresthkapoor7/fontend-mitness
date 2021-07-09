import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Createzoom.dart';
import 'package:page_transition/page_transition.dart';

import 'Choice.dart';
import 'Login2.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  Widget _textField({double h = 0, double w = 0, required String hintText}) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: HexColor('#8D99B2'), width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: h * 0.05,
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, right: 20, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: h / 30,
                        //   width: w / 25,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              "Create",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: h / 37,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //     onPressed: () {
                        //       Navigator.push(
                        //           context,
                        //           PageTransition(
                        //               child: Choice(),
                        //               type: PageTransitionType.fade,
                        //               duration: Duration(milliseconds: 200)));
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //       primary: Colors.transparent,
                        //       shadowColor: Colors.transparent,
                        //     ),
                        //     child: Image.asset('assets/Menu.png'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: _textField(
                              h: h, w: w * 1.07, hintText: "Class Name"),
                        ),
                        SizedBox(height: h * 0.02),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _textField(h: h, w: w / 2, hintText: "Time"),
                              _textField(h: h, w: w / 2, hintText: "Date"),
                            ],
                          ),
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
                              height: h * 0.055,
                              width: w * 0.856,
                              padding: EdgeInsets.only(left: 10, right: 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Category",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 30.0),
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(height: h * 0.02),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child:
                              _textField(h: h, w: w * 1.07, hintText: "Price"),
                        ),
                        SizedBox(height: h * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: HexColor('#8D99B2'), width: 0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: h * 0.07 * 2,
                              width: w * 1.07 * 0.8,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Description",
                                        contentPadding: const EdgeInsets.only(
                                            bottom: 60, top: 20),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  primary: HexColor("#7D53D7"),
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
                                                    'assets/Upload.png'))),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Upload Videos",
                                        style: TextStyle(fontSize: w * 0.04),
                                      ),
                                    ],
                                  ))),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(height: h * 0.02),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  primary: HexColor("2D8CFF"),
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
                                                    'assets/Zoom.png'))),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Live Classes",
                                        style: TextStyle(fontSize: w * 0.04),
                                      ),
                                    ],
                                  ))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: CreateZoomClass(),
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 200)));
                              },
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: h * 0.02),
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
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
                                        "Save",
                                        style: TextStyle(fontSize: w * 0.04),
                                      ))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: LoginPageIn(),
                                            type: PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 625)));
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
