import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class BtnSm extends StatelessWidget {
  String? text;
  BtnSm({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 8, horizontal: 12,
      ),
      child: TextBlack(text: '$text',),
    );
  }
}
