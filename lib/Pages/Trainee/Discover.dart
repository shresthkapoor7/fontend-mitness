import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Trainee/Discover2.dart';
import 'package:mitness/Pages/Trainee/programdetails3.dart';
import 'package:page_transition/page_transition.dart';

import 'classes.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final List<Category> aerobic = [
    Category(
      imagUrl: "assets/AerobicTrainer1.png",
      name: "@janedoe",
      subtitle: "Aerobic Trainer",
    ),
    Category(
      imagUrl: "assets/AerobicTrainer2.png",
      name: "@emilydoe",
      subtitle: "Aerobic Trainer",
    ),
    Category(
      imagUrl: "assets/aerobic3.png",
      name: "@doe",
      subtitle: "Aerobic Trainer",
    ),
  ];
  final List<Category> strength = [
    Category(
      imagUrl: "assets/strength1.png",
      name: "@berkayerdinc",
      subtitle: "Strength Trainer",
    ),
    Category(
      imagUrl: "assets/strength2.png",
      name: "@johndoe",
      subtitle: "Strength Trainer",
    ),
    Category(
      imagUrl: "assets/strength3.png",
      name: "@doe",
      subtitle: "Strength Trainer",
    ),
  ];
  final List<Category> yoga = [
    Category(
      imagUrl: "assets/yoga1.png",
      name: "@janedoe",
      subtitle: "Yoga Trainer",
    ),
    Category(
      imagUrl: "assets/yoga2.png",
      name: "@emilydoe",
      subtitle: "Yoga Trainer",
    ),
    Category(
      imagUrl: "assets/yoga3.png",
      name: "@doe",
      subtitle: "Yoga Trainer",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: HexColor('#171824'),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 28,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          backgroundColor: HexColor('#222332'),
          bottom: TabBar(
            indicatorWeight: 8,
            indicatorColor: Colors.pink[200],
            tabs: [
              Tab(
                child: Text(
                  "PREMIUM",
                  style: TextStyle(letterSpacing: 1.5, fontSize: w * 0.035),
                ),
              ),
              Tab(
                child: Text(
                  "ALL COURSES",
                  style: TextStyle(fontSize: w * 0.035),
                ),
              ),
              Tab(
                child: Text(
                  "FREE",
                  style: TextStyle(letterSpacing: 1.5, fontSize: w * 0.035),
                ),
              ),
            ],
          ),
          title: Text(
            'Discover',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: w * 0.05),
          ),
        ),
        body: TabBarView(
          children: [
            // ## 1st TAB
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(children: [
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
                                  "assets/HIIT 101.png",
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
                        left: 23,
                        child: Container(
                          height: h * 0.035,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.pink[400],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              "PREMIUM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.035,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: h / 35,
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
                    SizedBox(
                      height: h / 40,
                    ),
                    Stack(children: [
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
                                  "assets/YOGS2.png",
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
                        left: 23,
                        child: Container(
                          height: h * 0.035,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.pink[400],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              "PREMIUM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.035,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: h / 35,
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
                  ],
                ),
              ),
            ),
            // Tab All Courses #######
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Stack(children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: TempPage2(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200))),
                        },
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
                          "10 Minute Full Body Stretch",
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
                    SizedBox(
                      height: h / 40,
                    ),
                    Stack(children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: TempPage2(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200))),
                        },
                        child: Container(
                          height: h / 4.5,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image: AssetImage(
                                  "assets/YOGS 101.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Positioned(
                        top: h / 5.8,
                        left: 23,
                        child: Text(
                          "YOGS 101",
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
                          "@berkayerdinc",
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
                    SizedBox(
                      height: h / 40,
                    ),
                    Stack(children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: TempPage2(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200))),
                        },
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
                                  "assets/HIIT 101.png",
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
                        left: 23,
                        child: Container(
                          height: h * 0.035,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.pink[400],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              "PREMIUM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.035,
                                  letterSpacing: 1.5),
                            ),
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
                    SizedBox(
                      height: h / 40,
                    ),
                    Stack(children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: TempPage2(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200))),
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: h / 4.5,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    // colorFilter: new ColorFilter.mode(
                                    //     Colors.black.withOpacity(0.3),
                                    //     BlendMode.dstATop),
                                    image: AssetImage(
                                      "assets/YOGS2.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: h / 5.8,
                        left: 23,
                        child: Text(
                          "YOGS 101",
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
                    SizedBox(
                      height: h / 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Aerobic Trainers",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.05,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h / 40,
                    ),
                    Container(
                      width: double.infinity,
                      height: h / 3.6,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics: ClampingScrollPhysics(),
                          itemCount: aerobic.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Stack(children: [
                                Container(
                                  height: h / 4,
                                  width: w / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(aerobic[index].imagUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: h / 5.9,
                                  left: w / 26,
                                  child: Text(
                                    aerobic[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: w * 0.035,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: w / 26,
                                  top: h / 4.9,
                                  child: Text(
                                    aerobic[index].subtitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.034,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Strength Trainers",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.05,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h / 40,
                    ),
                    Container(
                      width: double.infinity,
                      height: h / 3.6,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics: ClampingScrollPhysics(),
                          itemCount: strength.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Stack(children: [
                                Container(
                                  height: h / 4,
                                  width: w / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image:
                                          AssetImage(strength[index].imagUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: h / 5.9,
                                  left: w / 26,
                                  child: Text(
                                    strength[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: w * 0.035,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: w / 26,
                                  top: h / 4.9,
                                  child: Text(
                                    strength[index].subtitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.034,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: h / 7.5,
                                  left: w / 26,
                                  child: Container(
                                    height: h * 0.023,
                                    width: w * 0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: w * 0.025,
                                            letterSpacing: 1.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Yoga Trainers",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.05,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h / 40,
                    ),
                    Container(
                      width: double.infinity,
                      height: h / 3.6,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics: ClampingScrollPhysics(),
                          itemCount: yoga.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Stack(children: [
                                Container(
                                  height: h / 4,
                                  width: w / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(yoga[index].imagUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: h / 5.9,
                                  left: w / 26,
                                  child: Text(
                                    yoga[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: w * 0.035,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: w / 26,
                                  top: h / 4.9,
                                  child: Text(
                                    yoga[index].subtitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w * 0.034,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            // THIRD TAB
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Stack(children: [
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
                        "10 Minute Full Body Stretch",
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
                  SizedBox(
                    height: h / 40,
                  ),
                  Stack(children: [
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
                                "assets/YOGS 101.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Positioned(
                      top: h / 5.8,
                      left: 23,
                      child: Text(
                        "YOGS 101",
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
                        "@berkayerdinc",
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
                  SizedBox(
                    height: h / 40,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
