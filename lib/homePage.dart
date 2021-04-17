import 'package:flutter/material.dart';
import 'Widgets/chip.dart';
import 'Widgets/tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(
                    0xff4871DF,
                  ),
                  Color(
                    0xff6AA8EA,
                  ),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 130.0,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'London',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 36.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Heavy Rain Tonight',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 260.0,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '27°',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 90.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/nightThunder.png'),
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 85.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Tile(
                      image: 'assets/images/snowyCloud.png',
                      label: '28%',
                    ),
                    Tile(
                      image: 'assets/images/sunnyWind.png',
                      label: '34%',
                    ),
                    Tile(
                      image: 'assets/images/windMoon.png',
                      label: '28%',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 45.0,
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Next 7 days >',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Chip(
                        icon: 'assets/images/nightThunder.png',
                        temprature: '23°',
                        time: '12:00',
                      ),
                      Chip(
                        icon: 'assets/images/nightThunder.png',
                        temprature: '23°',
                        time: '12:00',
                      ),
                      Chip(
                        icon: 'assets/images/nightThunder.png',
                        temprature: '23°',
                        time: '12:00',
                      ),
                      Chip(
                        icon: 'assets/images/nightThunder.png',
                        temprature: '23°',
                        time: '12:00',
                      ),
                      Chip(
                        icon: 'assets/images/nightThunder.png',
                        temprature: '23°',
                        time: '12:00',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
