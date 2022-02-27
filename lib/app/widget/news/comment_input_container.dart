import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentInputContainer extends GetView<NewsController> {
  final MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBlack(
            text: mainController.name.value,
            weight: FontWeight.w600,
          ),
          const SizedBox(
            height: 18,
          ),
          TextField(
            onChanged: (value) {
              controller.userComment(value);
            },
            maxLines: 5,
            maxLength: 120,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.blueAccent)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            BtnSm(
              text: '입력',
              onPress: () async {
               

                await controller.applyComment();

                Get.back();
              },
            )
          ]),
        ],
      ),
    );
  }
}
