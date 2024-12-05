import '../../core.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.put(ListPictureController());
    controller.fetchPictures();

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Picture'),
      ),
      body: Obx(() {
        if (controller.pictures.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListContentWidget(pictures: controller.pictures);
      }),
    );
  }
}
