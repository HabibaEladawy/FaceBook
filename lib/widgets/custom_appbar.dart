import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget

 {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
       AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, LoginScreen.routeName);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xFF898F9C)),
        ),
        elevation: 0,
        title: Text(
          'Facebook',
          style: TextStyle(
            color: Color(0xFF1877F2),
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 28, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 28, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger, size: 28, color: Colors.black),
          ),
        ],

        bottom: TabBar(
          tabs: [
            Icon(Icons.home, size: 28, color: Colors.grey),
            Icon(Icons.group, size: 28, color: Colors.grey),
            Icon(Icons.video_library, size: 28, color: Colors.grey),
            Icon(Icons.notifications, size: 28, color: Colors.grey),
            Icon(Icons.person, size: 28, color: Colors.grey),
            Image.asset('assets/images/Ellipse 2.png'),
          ],
        ),
      );

  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight+46);
}
