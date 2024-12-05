import '../../core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPictureController>(() => DetailPictureController());
    Get.lazyPut<ListPictureController>(() => ListPictureController());
  }
}
