import 'package:flutter/material.dart';
import 'package:otlop_dawwa_delivery/Screens/Welcome/welcome_scr.dart';
import 'package:otlop_dawwa_delivery/constans.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScr(),
    );
  }
}
