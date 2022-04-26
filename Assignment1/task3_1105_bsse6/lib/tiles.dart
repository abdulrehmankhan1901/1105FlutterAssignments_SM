import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  Tiles(
      {required this.iString,
      required this.type,
      required this.price,
      required this.col});
  String iString;
  String type;
  String price;
  Color col;
  Color txtColor = Colors.black;

  void updateColor() {
    if (col == Colors.teal) {
      txtColor = Colors.white;
    } else {
      txtColor = Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    updateColor();
    return ListTile(
      leading: Image(
        image: AssetImage('images/$iString'),
        width: 50,
      ),
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: col, borderRadius: BorderRadius.circular(15)),
            height: 50,
            width: 250,
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('ODS - GNR', style: TextStyle(color: txtColor)),
                        Text('11.00 - 16.00',
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                            child: Text('$type',
                                style: TextStyle(color: Colors.grey))),
                        Center(
                            child: Text('Class',
                                style: TextStyle(color: Colors.grey)))
                      ],
                    ),
                    Center(
                        child: Text('\$$price',
                            style: TextStyle(
                                color: txtColor, fontWeight: FontWeight.bold)))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
