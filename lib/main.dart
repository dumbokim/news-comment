import 'package:collector_app/app/binding/main_binding.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:collector_app/utils/dependency_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await DependencyService().init();
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
          initialBinding: MainBinding(),
          initialRoute: Routes.INITIAL,
          getPages: AppPages.routes,
        ));
  }
}
