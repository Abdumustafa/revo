import 'package:get/get.dart';
import 'package:revo/feature/about_app/ui/screen/about_app_screen.dart';
import 'package:revo/feature/base_screen/ui/screen/base_app_screen.dart';
import 'package:revo/feature/edit_profile/ui/screen/edit_profile.dart';
import 'package:revo/feature/favorite/ui/screen/favorite_screen.dart';
import 'package:revo/feature/forget_password/ui/screen/forget_password.dart';
import 'package:revo/feature/home_screen/ui/screen/home_screen.dart';
import 'package:revo/feature/create_account.dart/ui/screen/create_account.dart';
import 'package:revo/feature/login_screen/ui/screen/login_screen.dart';
import 'package:revo/feature/notifications_screen/ui/screen/notifications_screen.dart';
import 'package:revo/feature/otp_verification_screen/ui/screen/otp_verification.dart';
import 'package:revo/feature/price_guide/ui/screen/price_guide.dart';
import 'package:revo/feature/privacy_policy/ui/screen/privacy_policy.dart';
import 'package:revo/feature/property_details/ui/screen/property_details.dart';
import 'package:revo/feature/terms_and_privacy_policy/ui/screen/terms_and_privacy_policy.dart';
import 'package:revo/feature/terms_of_use/ui/screen/terms_of_use.dart';

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
    ),
    GetPage(
      name: '/NotificationsScreen',
      page: () => const NotificationsScreen(),
    ),
    GetPage(
      name: '/EditProfile',
      page: () => const EditProfile(),
    ),
    GetPage(
      name: '/CreateAccount',
      page: () => const CreateAccount(),
    ),
    GetPage(
      name: '/LoginScreen',
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: '/ForgetPassword',
      page: () => const ForgetPassword(),
    ),
    GetPage(
      name: '/FavoriteScreen',
      page: () => const FavoriteScreen(),
    ),
    GetPage(
      name: '/TermsOfUse',
      page: () => const TermsOfUse(),
    ),
    GetPage(
      name: '/PrivacyPolicy',
      page: () => const PrivacyPolicy(),
    ),
    GetPage(
      name: '/OtpVerificationScreen',
      page: () => const OtpVerificationScreen(),
    ),
    GetPage(
      name: '/PriceGuide',
      page: () => PriceGuide(),
    ), GetPage(
      name: '/TermsPrivacyPage',
      page: () => TermsPrivacyPage(),
    ),GetPage(
      name: '/AboutAppScreen',
      page: () => AboutAppScreen(),
    ),
  ];
}
