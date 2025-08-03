import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextForm extends StatelessWidget {

  final bool? obscureText;
  final String hintText;
  final Color? color;
  final TextInputType keyboardType;

  final TextEditingController controller;
  final String? Function(String?)? validator;

  final IconButton? suffixIcon;

  customTextForm({
    required this.hintText,
    this.color,

    this.suffixIcon,
    this.obscureText,
    required this.validator,
    required this.controller,
    required this.keyboardType,
  });

  bool showPassword = true;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        obscureText: showPassword,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,

          filled: true,
          fillColor: color,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[40], fontSize: 16),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.blueAccent, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.blueAccent, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    );
  }
}
