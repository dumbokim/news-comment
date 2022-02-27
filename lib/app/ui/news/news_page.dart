import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsPage extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextBlack(
            text: '사설',
            size: 18,
            weight: FontWeight.w700,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  controller.userComment('');

                  Get.to(() => CommentPage());
                },
                icon: Obx(() => controller.isLoaded.value
                    ?  Stack(alignment: Alignment.center, children: [
                        const Icon(
                          Icons.mode_comment_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          '${controller.comments.length}',
                          style: const TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                      ]) :const SizedBox()
                    )),
          ],
        ),
        body: SafeArea(
            child: Obx(() => IndexedStack(
                    index: controller.isLoaded.value ? 0 : 1,
                    children: [
                      SingleChildScrollView(
                          child: Container(
                        padding: const EdgeInsets.only(top: 12, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 16),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                             TextBlack(
                                              text: controller.theNews['date']!=null? controller.theNews['date']
                                                  .split('T')[0] : '',
                                            ),
                                            TextBlack(
                                              text:
                                                  controller.theNews['company'],
                                            )
                                          ]),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      TextBlack(
                                          text: controller.theNews['title'],
                                          size: 22,
                                          weight: FontWeight.w700),
                                      const SizedBox(
                                        height: 32,
                                      ),
                                      TextBlack(
                                        text: controller.theNews['content'],
                                        size: 17,
                                      ),
                                    ])),
                          ],
                        ),
                      )),
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                    ]))));
  }
}
