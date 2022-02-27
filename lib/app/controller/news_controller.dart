import 'package:collector_app/app/controller/main_controller.dart';
import 'package:collector_app/app/data/repository/main_repository.dart';
import 'package:collector_app/app/data/repository/news_repository.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewsController extends GetxController {
  final NewsRepository _repository = Get.find<NewsRepository>();

  @override
  void onReady() async {
    await getAllNews();

    super.onReady();
  }

  var isLoaded = false.obs;

  var newsList = [].obs;

  var theNews = {}.obs;

  var comments = [].obs;

  var userComment = ''.obs;

  var myComments = [].obs;

  getAllNews() async {
    isLoaded(false);

    final result = await _repository.getAllNews();


    if (result == false) {
      newsList([
        {'no': 0, 'title': '뉴스를 불러올 수 없습니다.', 'company': '', 'data': ''}
      ]);
    } else {
      newsList(result);
    }

    isLoaded(true);

  }

  Future<bool> getOneNews(int no) async {
    isLoaded(false);

    final result = await _repository.getOneNews(no);

    if (result == false) {
      return result;
    } else {
      theNews(result['news']);
      comments(result['comment']);
      isLoaded(true);

      return true;
    }
  }

  applyComment() async {
    Get.defaultDialog(
      title: '코멘트 저장중..',
      content: const CircularProgressIndicator(),
    );

    final commentData = {
      'comment': userComment.value,
    };

    final newsNo = theNews['no'];

    final result = await _repository.applyComment(newsNo, commentData);

    print('result : $result');
    if (result == true) {
      print('hi');
      await getOneNews(newsNo);
    }
  }

  getAllComments() async {
    isLoaded(false);

    final result = await _repository.getAllComments();

    if (result == false) {
    } else {
      print('returned well');

      print(result);

      isLoaded(true);

      myComments(result);
    }
  }
}
