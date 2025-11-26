import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarButtons extends StatelessWidget {
  const BottomBarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xff036268);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10.r,
            offset: Offset(0, -4.h),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 52.h,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 20.sp,
                ),
                label: Text(
                  "اتصال",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo",
                    fontSize: 16.sp,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  elevation: 3,
                  shadowColor: primaryColor.withOpacity(0.3),
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            flex: 6,
            child: SizedBox(
              height: 52.h,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: primaryColor,
                  size: 20.sp,
                ),
                label: Text(
                  "تواصل عبر واتساب",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Cairo",
                    fontSize: 14.sp,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: primaryColor.withOpacity(0.08),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  side: BorderSide(
                    color: primaryColor,
                    width: 1.5.w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
