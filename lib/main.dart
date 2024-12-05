import 'core.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mini project gallery',
      initialRoute: Routes.PHOTOS, // Route awal
      getPages: AppPages.routes, // Daftar routing
    );
  }
}
