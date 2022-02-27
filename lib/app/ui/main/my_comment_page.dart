import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCommentPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextBlack(
            text: '나의 코멘트',
            size: 18,
            weight: FontWeight.w700,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Obx(() => IndexedStack(
                    index: controller.isLoaded.value ? 0 : 1,
                    children: [
                      SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(top: 12, bottom: 20),
                child: Column(children: [
                  Obx(() => ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.myComments.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () async {
                              await controller.getOneNews(
                                  controller.myComments[index]['news']['no']);
                              Get.toNamed(Routes.NEWS);
                            },
                            child: MyCommentItem(
                              comment:
                                  '${controller.myComments[index]['comment']}',
                                  date:
                                  '${controller.myComments[index]['date']}',
                                  title: '${controller.myComments[index]['news']['title']}',
                            ));
                      })),
                ])),
          ),
        const Center(child: CircularProgressIndicator())  ]))
        ));
  }
}
