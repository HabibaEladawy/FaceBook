import 'package:facebook/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ItemModel>playerNames=[
  ItemModel(image: 'assets/images/Rectangle 7 (1).png'),
  ItemModel(image: 'assets/images/Rectangle 8.png'),
  ItemModel(image: 'assets/images/Rectangle 9.png'),



];
List<ItemModel>avatar=[

  ItemModel(image: 'assets/images/Ellipse 2 (1).png'),
  ItemModel(image: 'assets/images/Ellipse 4.png'),
  ItemModel(image: 'assets/images/Ellipse 6.png'),


];

class ItemListview extends StatelessWidget {
  final String image;

  const ItemListview({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 250,
            width: 150,
          ),
        ),
        Positioned(
          top: 10,
          left: 9,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: ClipRRect(

              borderRadius: BorderRadius.circular(180),

              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 250,
                width: 150,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

