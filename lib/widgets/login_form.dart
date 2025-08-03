import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text_form.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = false;
  final GlobalKey<FormState> formState = GlobalKey();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              customTextForm(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Mobile Number or Email address',
                controller: textEditingController,
                validator: (String? text) {
                  if (text != null && text.trim().isEmpty) {
                    return 'Email is not Required';
                  }
                  return null;
                },
              ),
              customTextForm(
                keyboardType: TextInputType.text,
                suffixIcon: IconButton(
                  onPressed: () {
                    showPassword = !showPassword;
                    setState(() {});
                  },
                  icon: Icon(
                    showPassword == false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                hintText: 'Password',

                controller: passwordEditingController,
                obscureText: showPassword,
                validator: (String? password) {
                  if (password != null && password.length < 8) {
                    return 'Password must at least 8 character';
                  }
                  return null;
                },
              ),

              CustomElevatedButton(

                backgroundColor: Colors.blueAccent,
                onPressed: clickToLogin,
                text: 'Login',
                colorText: Colors.white,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clickToLogin() {
    if (formState.currentState?.validate() ?? false) {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter valid data'),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }
}
