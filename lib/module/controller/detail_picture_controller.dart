import '../../core.dart';

class DetailPictureController extends GetxController {
  late String id;
  late String imageUrl;
  late String author;

  @override
  void onInit() {
    super.onInit();

    // Ambil parameter 'id' dari URL
    id = Get.parameters['id'] ?? 'unknown';

    // Ambil instance dari ListPictureController
    final ListPictureController listController =
        Get.find<ListPictureController>();

    // Cari data berdasarkan id
    var picture = listController.pictures.firstWhere(
      (element) => element['id'].toString() == id,
      orElse: () => {'author': 'Unknown', 'download_url': ''},
    );

    // Set data ke controller
    author = picture['author'] ?? 'Unknown';
    imageUrl = picture['download_url'] ?? '';
  }
}
