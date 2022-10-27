import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final String prepTime;
  final String cookTime;

  RecipeCard({this.imgSrc, this.title, this.prepTime, this.cookTime});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 170,
          child: Image.network(
            this.imgSrc,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            width: 160,
            height: 90,
            color: Colors.white,
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'MontserratBold',
                  ),
                ),
                Text(
                  'Level: ${this.prepTime}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Cook Time: ${this.cookTime}',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
