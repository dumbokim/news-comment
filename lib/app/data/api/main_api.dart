import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainApi {
  final Dio _dio = Get.find<Dio>();

  login(data) async {
    try {
      final response = await _dio.post('auth/login', data: data);

      final responseData = response.data;

      print(responseData);

      return responseData;
    } catch (_) {
      return false;
    }
  }

  tokenCheck() async {
    try {
      final pref = await SharedPreferences.getInstance();

      final acsToken = pref.getString('acsToken');

      final response = await _dio.get('auth/verify-token',
          options: Options(headers: {
            'Authorization':
                'Bearer $acsToken'
          }));

      final responseData = response.data;

      print('responseData: $responseData');

      return responseData;
    } catch (_) {

      return false;
    }
  }
}
