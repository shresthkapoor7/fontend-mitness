import 'package:flutter/material.dart';

class MyClasses {
  final String imagelink;
  double prog;
  MyClasses(this.imagelink, this.prog);
}

List<MyClasses> classes = <MyClasses>[
  MyClasses('assets/newimage11.png', 0.75),
  MyClasses('assets/newimage21.png', 0.25),
  MyClasses('assets/newimage31.png', 0.60),
];
