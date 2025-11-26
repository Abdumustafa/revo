import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/core/widget/text_feild_app.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          backgroundColor: ColorsManager.mainColor,
          elevation: 0.5,
          title: Text(
            "نسيت كلمة المرور",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Container(
                child: Image.asset(
                  color: ColorsManager.mainColor,
                  "assets/image/login.png",
                  width: 200.w,
                  height: 200.h,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    TextFieldApp(
                      hintText: "رقم الهاتف",
                    ),
                    SizedBox(height: 50.h),
                    PrimaryButton(
                      text: "ارسال",
                      onPressed: () {
                        Get.toNamed("/OtpVerificationScreen");
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
