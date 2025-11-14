import 'package:get/get.dart';
import 'package:revo/feature/base_screen/ui/screen/base_app_screen.dart';
import 'package:revo/feature/home_screen/ui/screen/home_screen.dart';
import 'package:revo/feature/notifications_screen/ui/screen/notifications_screen.dart';
import 'package:revo/feature/property_details/ui/screen/property_details.dart';

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
     GetPage(
      name: '/PropertyDetails',
      page: () => const PropertyDetails(),
    ),  GetPage(
      name: '/NotificationsScreen',
      page: () => const NotificationsScreen(),
    ),
  ];
}
