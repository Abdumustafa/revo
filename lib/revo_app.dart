import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:revo/core/routing/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RevoApp extends StatelessWidget {
  const RevoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Revo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            useMaterial3: true,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.first,
          getPages: AppPages.routes,
          locale: const Locale("ar", "EG"),
        );
      },
    );
  }
}
