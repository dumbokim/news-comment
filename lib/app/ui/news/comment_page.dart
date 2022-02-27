import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextBlack(
            text: '코멘트',
            size: 18,
            weight: FontWeight.w700,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
          padding: const EdgeInsets.only(top: 12, bottom: 20),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextBlack(
                                  text: '${controller.theNews['title']}',
                                  size: 22,
                                  weight: FontWeight.w700),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                TextBlack(
                                text: controller.theNews['date'].split('T')[0],
                                weight: FontWeight.w400,
                              ),

                               TextBlack(
                                text: controller.theNews['company'],
                                weight: FontWeight.w400,
                              ),])
                            ])),
                    Container(
                      height: 12,
                      color: Colors.grey[300],
                    ),
                    Obx(() => ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.comments.length,
                        itemBuilder: (context, index) {
                          return CommentItem(
                            comment: '${controller.comments[index]['comment']}',
                              date:
                                  '${controller.comments[index]['date']}'
                          );
                        })),
                    CommentInputContainer(),
                  ])),
            ],
          ),
        ))));
  }
}
