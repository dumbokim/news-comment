import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
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
                children: [
                  TextBlack(text: '사설 코멘트', size: 22, weight: FontWeight.w700),
                ],
              )),
              Container(
                height: 12,
                color: Colors.grey[300],
              ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 12,
            itemBuilder: (context, index) {
            return NewsItem();
          })
        ],
      ),
    ))));
  }
}
