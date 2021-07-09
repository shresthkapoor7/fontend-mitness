import 'package:flutter/material.dart';
import 'package:mitness/Pages/Instructor/Drawer.dart';
import 'package:mitness/Pages/Trainee/programdetails1.dart';
import 'package:mitness/Pages/Page1.dart';
import 'package:mitness/Pages/Trainee/Discover.dart';
import 'package:mitness/Pages/Trainee/hardik.dart';
import 'package:mitness/Pages/Trainee/programdetails2.dart';

import 'Pages/Instructor/Programdetails.dart';
import 'Pages/Trainee/Discover2.dart';
import 'Pages/Trainee/drawer2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mitness', debugShowCheckedModeBanner: false, home: Page1());
    // Page1());
    // MyHomePage2(title: 'title'));
  }
}
