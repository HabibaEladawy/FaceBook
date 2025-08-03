import 'package:facebook/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamed(context, LoginScreen.routeName);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/Splash Screen 1 (7).png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
