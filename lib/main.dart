import 'package:collector_app/app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
      },
      child: GetMaterialApp(
      title: 'news comment',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.grey,
      ),

      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
    ));
  }
}
