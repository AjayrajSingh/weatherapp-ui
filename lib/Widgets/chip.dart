import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  String time;
  String icon;
  String temprature;

  CustomChip({
    @required this.time,
    @required this.icon,
    @required this.temprature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      height: double.infinity,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 7,
            offset: Offset(0, 6),
            spreadRadius: 7,
          ),
        ],
      ),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            '$time',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          Expanded(
            child: Image.asset(
              '$icon',
              fit: BoxFit.scaleDown,
            ),
          ),
          Text(
            '$temprature',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
