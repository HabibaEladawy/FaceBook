import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/screens/login_screen.dart';
import 'package:facebook/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FaceBook());
}

class FaceBook extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home://HomeScreen(),
      SplashScreen(),
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),

      },

    );
  }
}
