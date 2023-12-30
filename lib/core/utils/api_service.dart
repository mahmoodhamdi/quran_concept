import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.quran.com/api/v4/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
