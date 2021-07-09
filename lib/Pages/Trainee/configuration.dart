import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10))
];

// List<Map> categories = [
//   {'name': 'Cats', 'iconPath': 'images/cat.png'},
//   {'name': 'Dogs', 'iconPath': 'images/dog.png'},
//   {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
//   {'name': 'Parrots', 'iconPath': 'images/parrot.png'},
//   {'name': 'Horses', 'iconPath': 'images/horse.png'}
// ];

List<Map> drawerItems = [
  {'icon': Icons.account_circle, 'title': 'My Profile'},
  {'icon': Icons.stacked_bar_chart, 'title': 'Statistics'},
  // {'icon': Icons.access_alarm, 'title': 'Add pet'},
  {'icon': Icons.settings, 'title': 'Settings'},
  {'icon': Icons.view_headline_sharp, 'title': 'KIOSK'},
  {'icon': Icons.account_balance_wallet, 'title': 'Wallet'},
];
