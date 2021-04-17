import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  String image;
  String label;

  Tile({@required this.image, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          padding: EdgeInsets.all(10.0),
          width: 60.0,
          decoration: BoxDecoration(
            color: Color(0xff083074),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            '$image',
          ),
        ),
        Spacer(),
        Text(
          '$label',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
