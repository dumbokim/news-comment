import 'package:collector_app/app/data/api/main_api.dart';
import 'package:collector_app/app/data/api/news_api.dart';
import 'package:collector_app/app/data/repository/main_repository.dart';
import 'package:collector_app/app/data/repository/news_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DependencyService extends GetxService {
  Future<dynamic> init() async {
    await Get.putAsync(() async =>
        Dio(BaseOptions(baseUrl: 'https://dbk-news.herokuapp.com/'))
          ..interceptors.add(LogInterceptor()));

    await Get.putAsync(() async => MainApi());
    await Get.putAsync(() async => MainRepository());


    await Get.putAsync(() async => NewsApi());
    await Get.putAsync(() async => NewsRepository());

    return true;
  }
}
