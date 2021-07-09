import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/CreatePage.dart';
import 'package:page_transition/page_transition.dart';
import 'Choice.dart';
import 'classes.dart';

class HomeIn extends StatefulWidget {
  @override
  _HomeInState createState() => _HomeInState();
}

class _HomeInState extends State<HomeIn> {
  int t = 0;
  int j = 0;
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
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'My Classes',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: h / 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h / 4,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(0),
                    itemCount: classes.length,
                    itemExtent: 160,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: h * 0.2,
                                    child: null,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            classes[index].imagelink),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    child: LinearProgressIndicator(
                                      value: classes[index].prog,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                      backgroundColor: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          primary: HexColor("#6A40F3"),
                          elevation: 0),
                      child: Container(
                          height: h * 0.09,
                          width: w * 0.80,
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Create A Class",
                                style: TextStyle(fontSize: w * 0.05),
                              ),
                              Icon(
                                Icons.add,
                                size: w * 0.06,
                              ),
                            ],
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: CreatePage(),
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 625)));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: h / 3.5,
                    width: w / 1.2,
                    child: Card(
                      color: Color.fromRGBO(34, 35, 50, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'Notification',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: h / 40),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Edit  >',
                                    style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 53.0),
                                  child: Text(
                                    'Aerobics',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: h / 45,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (t == 0)
                                              t = 1;
                                            else
                                              t = 0;
                                          });
                                        },
                                        child: t == 0
                                            ? Image.asset('assets/ball.png')
                                            : Stack(children: [
                                                Image.asset('assets/ball2.png'),
                                                Positioned(
                                                    top: h / 100,
                                                    left: h / 120,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                    )),
                                              ])),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 53.0),
                                  child: Text(
                                    'HIIT    ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: h / 45,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (j == 0)
                                              j = 1;
                                            else
                                              j = 0;
                                          });
                                        },
                                        child: j == 0
                                            ? Image.asset('assets/ball.png')
                                            : Stack(children: [
                                                Image.asset('assets/ball2.png'),
                                                Positioned(
                                                    top: h / 100,
                                                    left: h / 120,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                    )),
                                              ])),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
