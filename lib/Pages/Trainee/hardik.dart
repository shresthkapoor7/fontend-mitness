import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/CreatePage.dart';
import 'package:mitness/Pages/Trainee/Discover.dart';
import 'package:mitness/Pages/Trainee/drawerscreen.dart';
import 'package:page_transition/page_transition.dart';
import 'Choice.dart';
import 'classes.dart';

class HomeTrainee extends StatefulWidget {
  @override
  _HomeInState createState() => _HomeInState();
}

class _HomeInState extends State<HomeTrainee> {
  final List<Category> catego = [
    Category(
      imagUrl: "assets/courses1.png",
      name: "Beginner Boxing",
      subtitle: "GYM Training",
    ),
    Category(
      imagUrl: "assets/courses2.png",
      name: "Boxing Level 2",
      subtitle: "Community",
    ),
  ];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#171824'),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // print("Pressed Search Button");
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Discover(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200)));
                        },
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Exercise plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05,
                          letterSpacing: 1,
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
                SizedBox(height: h / 34),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Courses",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05,
                          letterSpacing: 1,
                        ),
                      ),

                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () => {},
                        color: Colors.transparent,
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "View all",
                              style: TextStyle(
                                fontSize: w * 0.029,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 8),
                  child: Container(
                    width: double.infinity,
                    height: h / 3.1,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Container(
                                    height: h / 4.5,
                                    width: w / 1.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(catego[index].imagUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: h / 6,
                                    left: w / 39,
                                    child: Container(
                                      height: h * 0.023,
                                      width: w * 0.1,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[600],
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "09:48",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: w * 0.025,
                                              letterSpacing: 1.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: h / 60,
                                ),
                                Text(
                                  catego[index].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.045,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  catego[index].subtitle,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: w * 0.035,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        height: h / 4.5,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.dstATop),
                              image: AssetImage(
                                "assets/yogaExperts1.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Positioned(
                      top: h / 5.8,
                      left: 23,
                      child: Text(
                        "HIIT 101",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.045,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    Positioned(
                      top: h / 7.1,
                      left: 23,
                      child: Text(
                        "@janedoe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.035,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    Positioned(
                      top: h / 38,
                      left: w / 1.36,
                      child: Container(
                        height: h * 0.023,
                        width: w * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "09:48",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.025,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: h / 50),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Browse All Categories",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.05,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Stack(children: [
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            height: h / 4.5,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/outdoor_running.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: h / 6,
                          left: 23,
                          child: Text(
                            "Outdoor Running",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Stack(children: [
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            height: h / 4.5,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/strength_training.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: h / 6,
                          left: 23,
                          child: Text(
                            "Strength Training",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Stack(children: [
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            height: h / 4.5,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/cardio_training.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: h / 6,
                          left: 23,
                          child: Text(
                            "Cardio Training",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.045,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
