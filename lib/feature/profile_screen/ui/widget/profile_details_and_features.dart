import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/feature/profile_screen/ui/widget/profile_item.dart';

class ProfileDetailsAndFeatures extends StatelessWidget {
  const ProfileDetailsAndFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 180.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.r,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 60.h),
                    Text(
                      "عبدالرحمن محمد",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "القاهره-مصر",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.blueGrey,
                        fontFamily: "Cairo",
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ProfileItem(
                            title: 'الملف الشخصي',
                            icon: Icons.person,
                            onTap: () {
                              Get.toNamed('/EditProfile');
                            },
                          ),
                          ProfileItem(
                            title: 'المفضل',
                            icon: Icons.favorite,
                            onTap: () {
                              Get.toNamed('/FavoriteScreen');
                            },
                          ),
                          ProfileItem(
                            title: 'دليل الاسعار',
                            icon: Icons.price_change,
                            onTap: () {
                               Get.toNamed('/PriceGuide');
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
