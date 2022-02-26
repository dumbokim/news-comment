import 'package:collector_app/app/data/api/news_api.dart';
import 'package:get/get.dart';

class NewsRepository {
  final NewsApi _api = Get.find<NewsApi>();

  getAllNews() async {
    return await _api.getAllNews();
  }

  getOneNews(int no) async {
    return await _api.getOneNews(no);
  }

  Future<bool> applyComment(int newsNo, Map<String, String> data) async {
    final result = await _api.applyComment(newsNo, data);
    print(result);

    return result;
  }

  getAllComments() async {
    return await _api.getAllComments();
  }
}
