import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';

class NoProperty extends StatelessWidget {
  const NoProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
              ),
              itemBuilder: (_, index) => Container(
                decoration: BoxDecoration(
                  color: ColorsManager.mainColor.withOpacity(0.07),
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 160.h,
          width: double.infinity,
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.55),
                Colors.white.withOpacity(0.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 14.r,
                offset: Offset(0, 5.h),
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.6),
              width: 1.w,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_work_rounded,
                size: 45.sp,
                color: ColorsManager.mainColor.withOpacity(0.85),
              ),
              SizedBox(height: 12.h),
              Text(
                "لا توجد عقارات مضافة بعد",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey.shade800,
                  fontFamily: "Cairo",
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                "ابدأ بإضافة أول عقار الآن",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.blueGrey.shade600,
                  fontFamily: "Cairo",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
