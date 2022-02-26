import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: 
            Center(child: TextBlack(
              text: '사설 코멘트',
              size: 33,
              weight: FontWeight.w700,
            ),)
            ));
  }
}
