import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/body_screen.dart';
import 'package:revo/feature/home_screen/ui/widget/search_and_filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedFilter = 'الكل';
  bool isBuySelected = true;

  void onFilterChanged(String filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  void onToggleBuyRent(bool buySelected) {
    setState(() {
      isBuySelected = buySelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 248, 255),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        title: Text('Revo', style: TextStyle(color: Colors.white, fontFamily: "Cairo", fontSize: 20.sp)),
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed('/NotificationsScreen'),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Icon(Icons.notifications_none, color: Colors.white, size: 24.sp),
            ),
          )
        ],
        toolbarHeight: 56.h,
      ),
      body: Column(
        children: [
          SearchWithFilter(
            selectedFilter: selectedFilter,
            isBuySelected: isBuySelected,
            onFilterChanged: onFilterChanged,
            onToggleBuyRent: onToggleBuyRent,
          ),
          SizedBox(height: 10.h),
          Expanded(child: BodyScreen(filter: selectedFilter)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/CreateAccount'),
        backgroundColor: ColorsManager.mainColor,
        child: Icon(Icons.map_rounded, color: Colors.white, size: 28.sp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
