import 'package:facebook/screens/login_screen.dart';
import 'package:facebook/widgets/POST.dart';
import 'package:facebook/widgets/category_listview.dart';
import 'package:facebook/widgets/create_story.dart';
import 'package:facebook/widgets/custom_appbar.dart';
import 'package:facebook/widgets/item_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';

List<ItemModel> playerName = [
  ItemModel(image: 'assets/images/Rectangle 7 (1).png'),
  ItemModel(image: 'assets/images/Rectangle 8.png'),
  ItemModel(image: 'assets/images/Rectangle 9.png'),
];

class ItemHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppbar(),
        body: ListView(
          //  padding: EdgeInsets.symmetric(vertical: 16),
          children: [
            SizedBox(height: 90, child: CategoryListview()),
            SizedBox(
              height: 260,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return SizedBox(width: 150, child: CreateStory());
                  }
                  return ItemListview(image: playerName[(index) % playerName.length].image);
                },
                separatorBuilder: (context, index) => SizedBox(width: 16),
                itemCount: playerName.length + 1,

              ),
            ),
            ...List.generate(2, (index) => Post()),
          ],
        ),
      ),
    );
  }
}
