import 'package:flutter/material.dart';

class rowButton extends StatelessWidget {
  rowButton({required this.col, required this.text});
  Color col;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          ".",
          style: TextStyle(fontSize: 45, color: col),
        ),
        Text(
          text,
          style: TextStyle(color: col),
        )
      ],
    ));
  }
}
