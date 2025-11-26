import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/core/widget/selector_app.dart';
import 'package:revo/core/widget/text_feild_app.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          backgroundColor: ColorsManager.mainColor,
          elevation: 0.5,
          title: Text(
            "انشاء حساب",
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
              Stack(
                children: [
                  CircleAvatar(
                    radius: 70.r,
                    backgroundImage:
                        const AssetImage("assets/image/profile.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: CircleAvatar(
                      radius: 15.r,
                      backgroundColor: ColorsManager.mainColor,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    TextFieldApp(
                      hintText: "اسم المستخدم",
                    ),
                    SizedBox(height: 10.h),
                    TextFieldApp(
                      hintText: "رقم الهاتف",
                    ),
                    SizedBox(height: 10.h),
                    TextFieldApp(
                      hintText: "كلمة المرور",
                      isPassword: true,
                    ),
                    SizedBox(height: 10.h),
                    TextFieldApp(
                      isPassword: true,
                      hintText: "تأكيد كلمة المرور",
                    ),
                    SizedBox(height: 10.h),
                    SelectorApp(
                      options: [
                        "القاهرة",
                        "الاسكندرية",
                        "الجيزة",
                      ],
                      subtitle: 'ادخل المحافظة',
                    ),
                    SizedBox(height: 5.h),
                    RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        style: TextStyles.font12greyboldCairo,
                        children: [
                          const TextSpan(
                            text: "من خلال تحديث ملفك الشخصي، فإنك توافق على ",
                          ),
                          TextSpan(
                            text: "شروط الخدمة",
                            style: TextStyles.font12greyboldCairo.copyWith(
                              color: ColorsManager.mainColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed("/TermsOfUse");
                              },
                          ),
                          const TextSpan(text: " و "),
                          TextSpan(
                            text: "سياسة الخصوصية",
                            style: TextStyles.font12greyboldCairo.copyWith(
                              color: ColorsManager.mainColor,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                                                              Get.toNamed("/PrivacyPolicy");

                            },
                          ),
                          const TextSpan(text: " الخاصة بنا."),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    PrimaryButton(
                      text: "انشاء حساب",
                      onPressed: () {},
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyles.font12greyboldCairo,
                        children: [
                          const TextSpan(
                            text: "هل لديك حساب؟ ",
                          ),
                          TextSpan(
                            text: "تسجيل الدخول",
                            style: TextStyles.font12greyboldCairo.copyWith(
                              color: ColorsManager.mainColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('/LoginScreen');
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
