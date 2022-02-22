import 'package:flutter/material.dart';

class TextBlack extends StatelessWidget {

  String? text;
  double? size;
  FontWeight? weight;

  TextBlack({this.text, this.size=14, this.weight=FontWeight.w500});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: Colors.black,
      ),
    );
  }
}