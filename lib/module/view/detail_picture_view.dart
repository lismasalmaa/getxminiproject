import '../../core.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller =
        Get.put(DetailPictureController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DetailPictureWidget(
          imageUrl: controller.imageUrl,
          author: controller.author,
          id: controller.id,
        ),
      ),
    );
  }
}
