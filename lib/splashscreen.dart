import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return SplashScreen(
      seconds: 15,
      photoSize: 200,
      backgroundColor: Colors.white,
      image: Image.asset(
        'assets/splash.gif',
        fit: BoxFit.fill,
      ),
      loaderColor: Colors.white,
      navigateAfterSeconds: App(),
    );
  }
}



