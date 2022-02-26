import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewsApi {
  final Dio _dio = Get.find<Dio>();

  getAllNews() async {
    try {
      final pref = await SharedPreferences.getInstance();

      final acsToken = pref.getString('acsToken');

      final response = await _dio.get('news',
          options: Options(headers: {'Authorization': 'Bearer $acsToken'}));

      final responseData = response.data;

      print('responseData: $responseData');

      return responseData;
    } catch (_) {
      return false;
    }
  }

  getOneNews(int no) async {
    try {
      final pref = await SharedPreferences.getInstance();

      final acsToken = pref.getString('acsToken');

      final response = await _dio.get('news/$no',
          options: Options(headers: {'Authorization': 'Bearer $acsToken'}));

      final responseData = response.data;

      print('responseData: $responseData');

      return responseData;
    } catch (_) {
      return false;
    }
  }

  Future<bool> applyComment(int newsNo, Map<String, String> data) async {
    try {
      final pref = await SharedPreferences.getInstance();

      final acsToken = pref.getString('acsToken');

      final response = await _dio.post(
        'news/$newsNo/comment',
        options: Options(
          headers: {'Authorization': 'Bearer $acsToken'},
        ),
        data: data,
      );

      final responseData = response.data;

      print('returning: $responseData');

      return responseData['message'];
    } catch (_) {
      print('error : $_');
      return false;
    }
  }

  getAllComments() async {
    try {
      final pref = await SharedPreferences.getInstance();

      final acsToken = pref.getString('acsToken');

      final response = await _dio.get('comment',
          options: Options(headers: {'Authorization': 'Bearer $acsToken'}));

      final responseData = response.data;

      print('responseData: $responseData');

      return responseData;
    } catch (_) {
      print('error : $_');
      return false;
    }
  }
}
