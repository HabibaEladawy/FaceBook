
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(
                  'assets/images/Ellipse 2.png'),radius: 18,),
              SizedBox(width: 5,),
              Text('Whats Your Mind?',style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              Spacer(),
              Icon(Icons.browse_gallery_outlined,
                color: Colors.green,size: 27,)
            ],
          ),
        ),
        Divider(thickness: 2,),
      ],

    );
  }
}
