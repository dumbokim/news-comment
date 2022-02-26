import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCommentItem extends GetView<NewsController> {
  String? comment;
  String? title;
  String? date;

  MyCommentItem({
    this.title,
    this.comment,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TextBlack(
              text: date!.split('T')[0],
              weight: FontWeight.w400,
            ),
            const SizedBox(
            height: 8,
          ),
            TextBlack(
              text: title,
              weight: FontWeight.w600,
            ),
           
          const SizedBox(
            height: 12,
          ),
          TextBlack(
            text: comment,
          )
        ],
      ),
    );
  }
}
