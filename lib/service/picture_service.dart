import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchPictures({int limit = 10}) async {
    try {
      // Melakukan request GET ke API dengan parameter limit
      Response response = await _dio.get(
        'https://picsum.photos/v2/list',
        queryParameters: {'limit': limit},
      );

      if (response.statusCode == 200) {
        // Mengembalikan data JSON jika sukses
        return response.data;
      } else {
        // Menangani status code selain 200
        throw Exception('Failed to load pictures');
      }
    } catch (e) {
      // Menangani error jika terjadi kesalahan saat request
      print('Error: $e');
      throw Exception('Failed to load pictures');
    }
  }
}
