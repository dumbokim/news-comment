import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class BtnSm extends StatelessWidget {
  String? text;
  void Function()? onPress;
  BtnSm({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 8, horizontal: 12,
      ),
      child: TextBlack(text: '$text',),
    ));
  }
}
