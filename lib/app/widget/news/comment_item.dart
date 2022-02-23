import 'package:collector_app/app/ui/pages.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TextBlack(
                  text: '김진현',
                  weight: FontWeight.w600,
                ),
                TextBlack(
                  text: '2022.02.22',
                  weight: FontWeight.w400,
                ),
              ]),
              const SizedBox(
                height: 12,
              ),
              TextBlack(
                text:
                    '재택 치료 7개월 아기, 애타게 병상 찾다 숨지는 기막힌 현실. 재택 치료 7개월 아기, 애타게 병상 찾다 숨지는 기막힌 현실. 재택 치료 7개월 아기, 애타게 병상 찾다 숨지는 기막힌 현실.',
              )
            ],
          ),
        );
  }
}
