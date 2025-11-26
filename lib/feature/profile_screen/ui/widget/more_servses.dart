import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/profile_screen/ui/widget/more_servses_componant.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h, 
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12.h, right: 20.w),
              child: Text(
                "المزيد من الخدمات",
                style: TextStyle(
                  fontSize: 14.sp, 
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
              child: MoreServicesComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
