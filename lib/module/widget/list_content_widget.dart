import '../../core.dart';

class ListContentWidget extends StatelessWidget {
  final List<dynamic> pictures;

  const ListContentWidget({super.key, required this.pictures});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pictures.length,
      itemBuilder: (context, index) {
        var picture = pictures[index];
        return Card(
          margin: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              // Navigasi ke halaman detail dengan parameter id
              Get.toNamed(
                Routes.DETAIL,
                parameters: {'id': picture['id']},
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Mengubah ke kiri
              children: [
                Image.network(
                  picture['download_url'],
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Created by: ${picture['author']}',
                    textAlign: TextAlign.left, // Mengubah align teks ke kiri
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
