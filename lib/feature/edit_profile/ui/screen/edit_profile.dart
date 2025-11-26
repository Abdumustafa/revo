import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';
import 'package:revo/core/widget/selector_app.dart';
import 'package:revo/core/widget/text_feild_app.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          backgroundColor: ColorsManager.mainColor,
          elevation: 0.5,
          title: Text(
            " تعديل الملف الشخصي",
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
              SizedBox(height: 50.h),
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
                    SelectorApp(
                      options: [
                        "القاهرة",
                        "الاسكندرية",
                        "الجيزة",
                      ],
                      subtitle: 'ادخل المحافظة',
                    ),
                    SizedBox(height: 30.h),
                    PrimaryButton(
                      text: "حفظ",
                      onPressed: () {},
                    ),
                    SizedBox(height: 5.h),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text(
                                "تأكيد حذف الحساب",
                                style: TextStyle(fontFamily: "Cairo"),
                              ),
                              content: const Text(
                                "هل أنت متأكد أنك تريد حذف حسابك؟ لا يمكن التراجع عن هذا الإجراء.",
                                style: TextStyle(fontFamily: "Cairo"),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    "إلغاء",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "حذف الحساب",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child:  Text(
                        "حذف الحساب",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.deepOrange,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
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
