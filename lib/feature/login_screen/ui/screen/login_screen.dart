import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/core/widget/text_feild_app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          backgroundColor: ColorsManager.mainColor,
          elevation: 0.5,
          title: Text(
            "تسجيل الدخول",
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
              SizedBox(height: 20.h),
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
                    SizedBox(height: 10.h),
                    TextFieldApp(
                      hintText: "كلمة المرور",
                      isPassword: true,
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/ForgetPassword');
                        },
                        child: Text(
                          "نسيت كلمة المرور؟",
                          style: TextStyles.font12greyboldCairo.copyWith(
                            color: ColorsManager.mainColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    PrimaryButton(
                      text: "تسجيل الدخول",
                      onPressed: () {},
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyles.font12greyboldCairo,
                        children: [
                          const TextSpan(
                            text: "ليس لديك حساب؟ ",
                          ),
                          TextSpan(
                            text: "انشاء حساب",
                            style: TextStyles.font12greyboldCairo.copyWith(
                              color: ColorsManager.mainColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('/CreateAccount');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
