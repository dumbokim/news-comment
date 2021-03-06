import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentItem extends GetView<NewsController> {
  String? comment;
  String? name;
  String? date;

  CommentItem({
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextBlack(
              text: '익명',
              weight: FontWeight.w600,
            ),
            TextBlack(
              text: date!.split('T')[0],
              weight: FontWeight.w400,
            ),
          ]),
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
