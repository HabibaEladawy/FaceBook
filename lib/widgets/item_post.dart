import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPost extends StatelessWidget {

String image;
String avatar;
String text;
String subText;
ItemPost({required this.image,required this.text,required this.avatar,
required this.subText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: ClipRRect(borderRadius: BorderRadius.circular(180),
                child: Image.asset(avatar)),
          ),
          title: Text(text),
          subtitle: Text(subText),
          trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_horiz)),
        ),
        SizedBox(height: 10,),
        Image.asset(image),

        Row(
          children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.favorite,color: Colors.grey,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.comment_bank,color: Colors.grey,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.send,color: Colors.grey,)),
            Spacer(),
            IconButton(onPressed: (){},
                icon: Icon(Icons.bookmark,color: Colors.grey,)),
          ],

        ),


        Divider(),
      ],
    );
  }
}
