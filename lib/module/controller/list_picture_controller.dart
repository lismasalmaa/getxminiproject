import '../../core.dart';
import 'package:dio/dio.dart'; // Import Dio

class ListPictureController extends GetxController {
  var pictures = <Map<String, dynamic>>[].obs; // Menyimpan data gambar lengkap
  final Dio dio = Dio();

  var isLoading = false.obs; // Indikator untuk status loading

  // Fungsi untuk mengambil gambar dan author
  void fetchPictures({int limit = 10}) async {
    isLoading.value = true; // Set isLoading menjadi true saat memulai fetch

    try {
      // Melakukan request GET ke API dengan parameter limit
      var response =
          await dio.get('https://picsum.photos/v2/list', queryParameters: {
        'limit': limit, // Menentukan jumlah data yang diambil
      });

      if (response.statusCode == 200) {
        // Jika berhasil, ambil data gambar dan author dari response
        var pictureData = (response.data as List)
            .map((picture) => {
                  'id': picture['id'],
                  'download_url': picture['download_url'] as String,
                  'author': picture['author'] as String,
                })
            .toList();

        // Menambahkan hasilnya ke dalam list pictures
        pictures.assignAll(pictureData);
      } else {
        throw Exception('Failed to load pictures');
      }
    } catch (e) {
      print("Error fetching pictures: $e");
    } finally {
      isLoading.value = false; // Set isLoading menjadi false setelah selesai
    }
  }
}
