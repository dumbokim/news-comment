import 'package:collector_app/app/data/repository/main_repository.dart';
import 'package:collector_app/app/routes/route.dart';
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

  var id = ''.obs;
  var password = ''.obs;

  var name = ''.obs;
  var email = ''.obs;

  saveToken(token) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString('acsToken', token);
  }

  makeLoginData(id, password) {
    return {'id': id, 'password': password};
  }

  login() async {
    final loginData = makeLoginData(id.value, password.value);

    final result = await _repository.login(loginData);

    if (result == false) {
      return false;
    } else {
      final pref = await SharedPreferences.getInstance();

      await pref.setString('acsToken', result['accessToken']);

      name(result['name']);

      email(result['email']);

      return true;
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
    final result = await _repository.tokenCheck();

    if (result == false) {
      return result;
    } else {
      name(result['name']);
      email(result['email']);

      return true;
    }

  }
}
