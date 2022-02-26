import 'package:collector_app/app/binding/main_binding.dart';
import 'package:collector_app/app/binding/news_binding.dart';
import 'package:collector_app/app/ui/pages.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const String INITIAL = '/';
  static const String HOME = '/home';
  static const String LOGIN = '/login';
  static const String NEWS = '/news';
  
}

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: ()  => SplashPage(), ),

    GetPage(name: Routes.HOME, page: () => HomePage(), binding: NewsBinding() ),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.NEWS, page: () => NewsPage()),
    ];
  }
