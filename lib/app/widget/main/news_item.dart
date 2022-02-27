import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsItem extends GetView<NewsController> {
  int? no;
  String? title;
  String? date;
  String? company;

  NewsItem({this.no, this.title, this.date, this.company});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          Get.to(() => NewsPage());

          final result = await controller.getOneNews(no!);
        },
        child: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsItemTitle(
                text: title,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                  child: TextBlack(
                    text: (date!.split('T')[0]),
                    weight: FontWeight.w400,
                  ),
                ),
                TextBlack(
                  text: company,
                  weight: FontWeight.w400,
                )
              ]),
            ],
          ),
        ));
  }
}
