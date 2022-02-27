import 'package:collector_app/app/data/repository/main_repository.dart';
import 'package:collector_app/app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainController extends GetxController {
  final MainRepository _repository = Get.find<MainRepository>();

  @override
  void onReady() async {
    final result = await _tokenCheck();

    print('result : $result');

    result == false
        ? Get.offAllNamed(Routes.LOGIN)
        : Get.offAllNamed(Routes.HOME);

    super.onReady();
  }

  var loadingText = '로그인 확인중..'.obs;

  var id = ''.obs;
  var password = ''.obs;

  var name = ''.obs;
  var email = ''.obs;

  saveToken(token) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString('acsToken', token);
  }

  Map<String, String> makeLoginData(String id, String password) {
    return {'id': id, 'password': password};
  }

  login() async {
    Get.defaultDialog(
      title: '로그인 중..',
      content: const CircularProgressIndicator(),
    );
    final loginData = makeLoginData(id.value, password.value);

    final result = await _repository.login(loginData);

    if (result == false) {
      Get.snackbar('로그인 실패', '다시 시도해주세요.');
    } else {
      final pref = await SharedPreferences.getInstance();

      await pref.setString('acsToken', result['accessToken']);

      name(result['name']);

      email(result['email']);

      Get.offAllNamed(Routes.HOME);
    }
  }

  logout() async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString('acsToken', '');

    name('');

    email('');

    Get.offAllNamed(Routes.LOGIN);
  }

  _tokenCheck() async {
    loadingText('로그인 정보 확인중..');

    final result = await _repository.tokenCheck();

    if (result == false) {
      loadingText('로그인 실패');
      return result;
    } else {
      loadingText('로그인 성공');

      name(result['name']);
      email(result['email']);

      return true;
    }
  }
}
