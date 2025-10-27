import 'package:get/get.dart';
import 'package:revo/feature/base_screen/ui/screen/base_app_screen.dart';
import 'package:revo/feature/home_screen/ui/screen/home_screen.dart';

class AppPages {
  static const first = '/home';

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const BaseScreen(),
    ),
    GetPage(
      name: '/account',
      page: () => const HomeScreen(),
    ),
  ];
}
