import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          TextBlack(
            text: '사설 코멘트',
            size: 33,
            weight: FontWeight.w700,
          ),
          const SizedBox(
            height: 70,
          ),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 40,
          ),
          Obx(() => TextBlack(
                text: controller.loadingText.value,
                size: 18,
                weight: FontWeight.w400,
              )),
        ]))));
  }
}
