import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/profile_screen/ui/widget/more_servses.dart';
import 'package:revo/feature/profile_screen/ui/widget/no_property.dart';

class BodyComponant extends StatelessWidget {
  const BodyComponant({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 380.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 230.h,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0.w),
                            child: Text(
                              "عقاراتي",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 12.sp,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, bottom: 10.h),
                        child: NoProperty(),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ServicesScreen(),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
