import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentPage extends GetView {
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
              child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ TextBlack(text: '재택 치료 7개월 아기, 애타게 병상 찾다 숨지는 기막힌 현실', size: 22, weight: FontWeight.w700),
                     
                     const SizedBox(height: 10,),
                     TextBlack(
                  text: '2022.02.22',
                  weight: FontWeight.w400,
                ),
                    
                    ])),
                    Container(
                height: 12,
                color: Colors.grey[300],
              ),
                    CommentItem(),
              CommentInputContainer(),

                  ])),
        ],
      ),
    ))));
  }
}
