import 'package:flutter/material.dart';

class NewsItemTitle extends StatelessWidget {

  String? text;

  NewsItemTitle({this.text, });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      maxLines: 2,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        overflow: TextOverflow.ellipsis
      ),
    );
  }
}