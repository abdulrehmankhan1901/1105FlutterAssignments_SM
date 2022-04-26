import 'package:flutter/material.dart';

class LocationImage extends StatelessWidget {
  LocationImage({required this.iString, required this.rating});
  String iString;
  String rating;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('images/$iString'), fit: BoxFit.fill)),
          ),
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.fromLTRB(150, 25, 25, 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5)),
            child: Center(
                child: Text(
              '$rating',
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
