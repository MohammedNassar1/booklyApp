import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final String key = 'AIzaSyACh7lx2HgjPU4FtdeXUQcNNh5DTtTQBdQ';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await Dio().post('$baseUrl$endPoint');
    return response.data;
  }
}
