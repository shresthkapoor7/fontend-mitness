// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Account1.dart';
import 'package:mitness/Pages/Trainee/hardik.dart';
import 'package:page_transition/page_transition.dart';

import 'Choice.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: HexColor('#171824'),
        padding: EdgeInsets.only(top: 30, bottom: 70, left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/Circular_Avatar.png"),
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Berkay Erdinc',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Istanbul, Turkey',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.none),
                  ),
                ]),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: drawerItems
                  .map((element) => Column(
                        children: [
                          FlatButton(
                            padding: EdgeInsets.zero,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => MyAccount1()),
                              // );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  element['icon'],
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(element['title'],
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        decoration: TextDecoration.none))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 10,
            ),
            // Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FlatButton(
            //         onPressed: () => {},
            //         // color: Colors.yellow,
            //         // padding: EdgeInsets.only(left: .0),
            //         child: Text(
            //           "Terms & Conditions",
            //           style: TextStyle(
            //             fontSize: 13.0,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ),
            //       TextButton(
            //         onPressed: () => {},
            //         // color: Colors.yellow,
            //         // padding: EdgeInsets.only(left: .0, top: 0.0, bottom: 0.0),
            //         child: Text(
            //           "Privacy Policy",
            //           style: TextStyle(
            //             fontSize: 13.0,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ),
            //       // ignore: deprecated_member_use
            //       TextButton(
            //         onPressed: () => {},
            //         // color: Colors.transparent,
            //         // padding: EdgeInsets.only(left: .0, top: 0.0, bottom: 0.0),
            //         child: Text(
            //           "FAQ & Support",
            //           style: TextStyle(
            //             fontSize: 13.0,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ),
            //     ]),
            TextButton(
              // padding: EdgeInsets.zero,
              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () => {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccount1()),
                  );
                })
              },

              // color: Colors.transparent,
              // padding: EdgeInsets.only(left: .0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.logout,
                    color: Colors.grey,
                  ),
                  Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, '/login');
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         child: Choice(),
                  //         type: PageTransitionType.fade,
                  //         duration: Duration(milliseconds: 200)));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Image.asset('assets/Menu.png'))
          ],
        ),
      ),
    );
  }
}
