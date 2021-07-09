import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Drawer.dart';
import 'package:mitness/Pages/Trainee/programdetails2.dart';
import 'package:page_transition/page_transition.dart';

class TempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
        backgroundColor: HexColor('#222332'),
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 21),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              // Stack for the image
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        height: 126,
                        width: 339,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/ProgramDetailsImage.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple.shade900,
                                    BlendMode.overlay))),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Aerial Workout',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('@janedoe',
                          style: TextStyle(color: HexColor('#FFFFFF')))
                    ],
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                height: 125,
                width: 339,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: TempPage2(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 83,
                                width: 132,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/ProgramDetailsImage.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.overlay))),
                              ),
                            ),
                            FlatButton(
                                height: 18,
                                minWidth: 42,
                                color: Colors.grey,
                                onPressed: () {},
                                child: Text('09:48'))
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lift it again',
                              style: TextStyle(
                                  color: HexColor('#FFFFFF'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Upper body • Weights',
                              style: TextStyle(
                                color: HexColor('#AAB2BA'),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Beginner',
                                  style: TextStyle(
                                    color: HexColor('#FFFFFF'),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  ' •',
                                  style: TextStyle(
                                      color: HexColor('#AAB2BA'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' 24 min',
                                  style: TextStyle(
                                    color: HexColor('#AAB2BA'),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                height: 125,
                width: 339,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: TempPage2(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 200)));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 83,
                                width: 132,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/ProgramDetailsImage.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.overlay))),
                              ),
                            ),
                            FlatButton(
                                height: 18,
                                minWidth: 42,
                                color: Colors.grey,
                                onPressed: () {},
                                child: Text('09:48'))
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lift it again',
                              style: TextStyle(
                                  color: HexColor('#FFFFFF'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Upper body • Weights',
                              style: TextStyle(
                                color: HexColor('#AAB2BA'),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Beginner',
                                  style: TextStyle(
                                    color: HexColor('#FFFFFF'),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  ' •',
                                  style: TextStyle(
                                      color: HexColor('#AAB2BA'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' 24 min',
                                  style: TextStyle(
                                    color: HexColor('#AAB2BA'),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                height: 60,
                width: 339,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'See more videos',
                          style: TextStyle(
                              color: HexColor('#6A40F3'),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: HexColor('#6A40F3'),
                          size: 20,
                        ),
                      ],
                    )),
              ),

              //Code Repeat
              /*
              
              
              
              */
              SizedBox(height: 20),
              // Stack for the image
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Container(
                        height: 126,
                        width: 339,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/ProgramDetailsImage.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.green.shade900, BlendMode.overlay))),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Yoga Set 101',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('@janedoe',
                          style: TextStyle(color: HexColor('#FFFFFF')))
                    ],
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                height: 125,
                width: 339,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 83,
                                width: 132,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/ProgramDetailsImage.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.overlay))),
                              ),
                            ),
                            FlatButton(
                                height: 18,
                                minWidth: 42,
                                color: Colors.grey,
                                onPressed: () {},
                                child: Text('09:48'))
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lift it again',
                              style: TextStyle(
                                  color: HexColor('#FFFFFF'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Upper body • Weights',
                              style: TextStyle(
                                color: HexColor('#AAB2BA'),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Beginner',
                                  style: TextStyle(
                                    color: HexColor('#FFFFFF'),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  ' •',
                                  style: TextStyle(
                                      color: HexColor('#AAB2BA'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' 24 min',
                                  style: TextStyle(
                                    color: HexColor('#AAB2BA'),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                ),
                height: 125,
                width: 339,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 83,
                                width: 132,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/ProgramDetailsImage.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.overlay))),
                              ),
                            ),
                            FlatButton(
                                height: 18,
                                minWidth: 42,
                                color: Colors.grey,
                                onPressed: () {},
                                child: Text('09:48'))
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lift it again',
                              style: TextStyle(
                                  color: HexColor('#FFFFFF'),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Upper body • Weights',
                              style: TextStyle(
                                color: HexColor('#AAB2BA'),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'Beginner',
                                  style: TextStyle(
                                    color: HexColor('#FFFFFF'),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  ' •',
                                  style: TextStyle(
                                      color: HexColor('#AAB2BA'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' 24 min',
                                  style: TextStyle(
                                    color: HexColor('#AAB2BA'),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: HexColor('#222332'),
                  border: Border.all(
                    color: Colors.grey.shade800,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                height: 60,
                width: 339,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'See more videos',
                          style: TextStyle(
                              color: HexColor('#6A40F3'),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: HexColor('#6A40F3'),
                          size: 20,
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
