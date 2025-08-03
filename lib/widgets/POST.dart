import 'package:facebook/widgets/item_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    ItemPost(image: 'assets/images/route.jpg', text: 'bebo', avatar: 'assets/images/Ellipse 6.png', subText: '8h  go'),


        ItemPost(image:
        'assets/images/model.jpg', text: 'jone', avatar: 'assets/images/avater.jpg', subText: '12h'),

      ItemPost(image: 'assets/images/model2.jpg', text: 'habiba', avatar: 'assets/images/Ellipse 1 (1).png', subText: '15hour'),
        ItemPost(image: 'assets/images/model3.jpg', text: 'mohamed', avatar: 'assets/images/Ellipse 2 (1).png', subText: 'justNow'),






      ],
    );
  }
}
git remote remove origin