import 'package:collector_app/app/data/api/main_api.dart';
import 'package:get/get.dart';

class MainRepository {
  final MainApi _api = Get.find<MainApi>();

  login(data) async {
    return await _api.login(data);
  }

  tokenCheck() async {
    return await _api.tokenCheck();
  }
}
