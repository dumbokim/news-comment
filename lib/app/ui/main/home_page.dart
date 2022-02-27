import 'package:collector_app/app/controller/news_controller.dart';
import 'package:collector_app/app/ui/main/my_page.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<NewsController> {
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
                  TextBlack(text: '사설 코멘트', size: 22, weight: FontWeight.w700),
                  InkWell(
                      onTap: () {
                        Get.to(() => MyPage());
                      },
                      child: const Icon(Icons.person_pin,
                          size: 30, color: Colors.blue)),
                ],
              )),
          Container(
            height: 12,
            color: Colors.grey[300],
          ),
          Obx(() =>
              IndexedStack(index: controller.isLoaded.value ? 1 : 0, children: [
                 Center(
                  child: Column(
                    children: [
                    TextBlack(text:'뉴스 불러오는중..', size: 18),
                    
                    const SizedBox(height: 30,),

                    const CircularProgressIndicator(),
                    
                    
                  ])
                ),
                ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.newsList.length,
                    itemBuilder: (context, index) {
                      return NewsItem(
                        no: controller.newsList[index]['no'],
                        title: controller.newsList[index]['title'],
                        company: controller.newsList[index]['company'],
                        date: controller.newsList[index]['date'],
                      );
                    })
              ]))
        ],
      ),
    ))));
  }
}
