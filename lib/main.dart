import 'package:flutter/material.dart';
import 'pages/onboarding_page.dart';
// ignore: unused_import
import 'package:fruitapp/pages/homepage.dart';
import 'package:fruitapp/pages/onboarding_page.dart';
// ignore: unused_import
import 'package:fruitapp/widget/button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Onboarding Ex';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        home: OnBoardingPage(),
        debugShowCheckedModeBanner: false,
      );
}
