import 'package:facebook/model/item_model.dart';
import 'package:facebook/widgets/category_listview.dart';
import 'package:facebook/widgets/item_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [Flexible(child: ItemHome())]),
      ),
    );
  }
}
