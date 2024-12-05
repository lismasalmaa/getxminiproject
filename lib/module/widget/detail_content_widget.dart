import '../../core.dart';

class DetailPictureWidget extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String id;

  const DetailPictureWidget({
    super.key,
    required this.imageUrl,
    required this.author,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Padding untuk keseluruhan konten
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Pastikan semua elemen di-align ke kiri
        children: [
          // Gambar
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Membuat sudut gambar membulat
            child: Image.network(
              imageUrl,
              width: double.infinity, // Gambar memenuhi lebar layar
              height: 300, // Tinggi gambar
              fit: BoxFit.cover, // Gambar menyesuaikan area tanpa distorsi
            ),
          ),
          const SizedBox(height: 16.0), // Jarak antara gambar dan teks
          
          // Nama Author
          Align(
            alignment: Alignment.centerLeft, // Memastikan teks berada di pojok kiri
            child: Text(
              'Created by: $author', // Teks nama author
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16.0), // Jarak antara teks dan elemen berikutnya (jika ada)
        ],
      ),
    );
  }
}
