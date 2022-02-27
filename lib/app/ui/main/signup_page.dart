import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:collector_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextBlack(
            text: '회원가입',
            size: 18,
            weight: FontWeight.w700,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextBlack(
                      text: '회원가입(인데 아직 안됨)',
                      size: 25,
                      weight: FontWeight.w700,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        controller.id(value);
                      },
                      decoration: InputDecoration(
                        labelText: '이름',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
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
                        labelText: '비밀번호',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
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
                      onChanged: (value) {
                        controller.id(value);
                      },
                      decoration: InputDecoration(
                        labelText: '이름',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),TextField(
                      onChanged: (value) {
                        controller.id(value);
                      },
                      decoration: InputDecoration(
                        labelText: '이메일',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                   
                  const SizedBox(height: 20,),
                             Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: InkWell(
                            onTap: () async {
                              // Get.to(() => );
                            },
                            child: TextBlack(
                              text: '회원가입',
                              size: 18,
                              weight: FontWeight.w600,
                            )))
                  ],
                ))));
  }
}
