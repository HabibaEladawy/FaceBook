import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/widgets/custom_elevated_button.dart';

import 'package:facebook/widgets/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/facebook-svgrepo-com (1) 1.png',
                height: 150,
              ),

              Expanded(child: SingleChildScrollView(child: LoginForm())),

              CustomElevatedButton(
                text: 'Create Account',
                colorText: Colors.blueAccent,
                backgroundColor: Colors.transparent,
                onPressed: () {},
              ),
              Image.asset('assets/images/Meta Logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
