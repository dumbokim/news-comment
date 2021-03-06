import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/main/my_comment_page.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends GetView<MainController> {
  final newsController = Get.find<NewsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBlack(
                      text: '안녕하세요, ${controller.name.value}님!',
                      size: 22,
                      weight: FontWeight.w700),
                  InkWell(
                      onTap: () async {
                        Get.defaultDialog(
                            titlePadding:
                                const EdgeInsets.symmetric(vertical: 20),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 26),
                            title: '로그아웃 하시겠어요?',
                            middleText: "로그아웃을 원하시면\n\nOK를 눌러주세요\n",
                            
                            onConfirm: () async {
                        await controller.logout();

                            },
                            
                            );
                          
                      },
                      child: const Icon(Icons.logout,
                          size: 30, color: Colors.blue)),
                ],
              )),
          Container(
            height: 12,
            color: Colors.grey[300],
          ),
          InkWell(
              onTap: () async {

                Get.to(() => MyCommentPage());

                final result = await newsController.getAllComments();

              },
              child: Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flex(direction: Axis.horizontal, children: [
                          const Icon(Icons.comment_rounded),
                          const SizedBox(
                            width: 12,
                          ),
                          TextBlack(
                            text: '나의 코멘트',
                            size: 20,
                          ),
                        ]),
                        const Icon(Icons.keyboard_arrow_right),
                      ]))),
          // Obx(() => ListView.builder(
          //   physics: const ScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: controller.newsList.length,
          //   itemBuilder: (context, index) {
          //   return NewsItem(
          //     no: controller.newsList[index]['no'],
          //     title: controller.newsList[index]['title'],
          //     company: controller.newsList[index]['company'],
          //     date: controller.newsList[index]['date'],
          //   );
          // }))
        ],
      ),
    ))));
  }
}
