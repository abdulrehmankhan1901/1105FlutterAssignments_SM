import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityImage extends StatelessWidget {
  ActivityImage(
      {required this.iString,
      required this.activity,
      required this.people,
      required this.col});
  String iString;
  String activity;
  String people;
  Color col;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 200,
            width: 290,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('images/$iString'), fit: BoxFit.fill)),
          ),
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.fromLTRB(250, 25, 25, 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5)),
            child: Center(
                child: Icon(
              Icons.star_rounded,
              size: 15,
              color: Colors.yellow,
            )),
          ),
          Container(
              height: 65,
              width: 185,
              margin: EdgeInsets.fromLTRB(60, 170, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: col),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$activity',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$people',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
