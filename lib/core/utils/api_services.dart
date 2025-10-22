import 'package:dio/dio.dart';

class ApiServices {
  final _urlbase = 'https://www.googleapis.com/books/v1/';
  Dio dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_urlbase$endPoint');
    return response.data;
  }
}
