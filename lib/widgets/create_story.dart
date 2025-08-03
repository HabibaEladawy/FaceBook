import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 150,
               decoration: BoxDecoration(
                 color:Colors.grey ,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10),
                 ),),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset(
                    'assets/images/wallpaperflare.com_wallpaper.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //SizedBox(height: 16),
              Positioned(
                bottom: 8,
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 92,
          width: 136,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10) )
          ),
          child: Text(
            'Create a\nStory',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
