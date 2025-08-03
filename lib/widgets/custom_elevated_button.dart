import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  final String text;
  final Color colorText;
  final Color backgroundColor;
  CustomElevatedButton({
    required this.text,
    required this.colorText,
    required this.backgroundColor,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 13),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
