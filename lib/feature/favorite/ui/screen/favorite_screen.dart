import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "المفضلة",
          style: TextStyles.font18whiteboldCairo.copyWith(fontSize: 18.sp),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20.sp,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 80.sp,
              color: ColorsManager.mainColor.withOpacity(0.6),
            ),
            SizedBox(height: 12.h),
            Text(
              "لا توجد عناصر مضافة إلى المفضلة",
              style: TextStyles.font16GreymediumCairo.copyWith(
                fontSize: 16.sp,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "قم بإضافة عقار المفضلة للعثور عليها بسهولة",
              style: TextStyles.font12greyboldCairo.copyWith(
                fontSize: 13.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
