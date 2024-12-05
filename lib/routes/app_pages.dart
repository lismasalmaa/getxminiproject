import 'package:get/get.dart';
import 'package:flutter_project_gallery_ids/module/view/list_picture_view.dart';
import '../module/picture/picture_blinding.dart';
import '../module/view/detail_picture_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.PHOTOS,
      page: () => const PhotosPage(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => const DetailPage(),
      binding: PictureBinding(),
    ),
  ];
}
