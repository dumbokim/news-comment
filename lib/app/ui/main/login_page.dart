import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextBlack(text:'사설 코멘트', size: 35, weight: FontWeight.w700, ),
                      const SizedBox(
                      height: 50,
                    ),
                    TextBlack(text:'로그인', size: 25, weight: FontWeight.w700, ),
                      const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        controller.id(value);
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      onChanged: (value) {
                        controller.password(value);
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
  Container(

    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
  border: Border.all(color: Colors.grey)
),
    child: InkWell(onTap:() async {
                          Get.defaultDialog(
                              title: '',
                              content: const CircularProgressIndicator(),
                              backgroundColor: Colors.transparent);

                          final result = await controller.login();

                          result
                              ? Get.offAllNamed(Routes.HOME)
                              : Get.snackbar('로그인 실패', '다시 시도해주세요.');
                        },
                        child: TextBlack(
                          text: '로그인',
                           size: 18, weight: FontWeight.w600, 
                        )))
                   
                  ],
                ))));
  }
}
