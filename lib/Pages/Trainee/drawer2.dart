import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitness/Pages/Instructor/Followers.dart';
import 'package:mitness/Pages/Instructor/Frame2.dart';
import 'package:mitness/Pages/Instructor/HomeScreen.dart';
import 'package:mitness/Pages/Instructor/Login2.dart';
import 'package:mitness/Pages/Instructor/Schedule.dart';
import 'package:mitness/Pages/Instructor/classes.dart';
import 'package:mitness/Pages/Trainee/hardik.dart';

import 'Account1.dart';

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage2(title: appTitle),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  final String title;

  MyHomePage2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeTrainee(),
        drawer: Drawer(
          child: AppDrawer(),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#171824'),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: HexColor('#171824'),
            ),
            child: CircleAvatar(
              radius: 5,
              backgroundImage: AssetImage('assets/img_avatar.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Text(
                'Berkay Edinic',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: HexColor('#FFFFFF'),
                    fontSize: 21),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Text(
                'Istanbul, Turkey',
                style: TextStyle(color: HexColor('#AAB2BA'), fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'My Profile',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAccount1()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.trending_up,
              color: Colors.white,
            ),
            title: Text(
              'My Schedule',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySchedule()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'My Classes',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Frame2()),
              );
            },
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.view_headline_sharp,
          //     color: Colors.white,
          //   ),
          //   title: Text(
          //     'My Followers',
          //     style: TextStyle(color: Colors.white, fontSize: 17),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => FollowersPage()),
          //     );
          //   },
          // ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPageIn()),
              );
            },
          ),
        ],
      ),
    );
  }
}
