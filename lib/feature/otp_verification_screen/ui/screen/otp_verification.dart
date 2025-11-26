import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/primary_button.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "التحقق من الهاتف",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Text(
              "الرجاء إدخال رمز OTP المكون من 6 أرقام المرسل إلى رقمك",
              textAlign: TextAlign.center,
              style: TextStyles.font12greyboldCairo.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 30.h),
            PinCodeTextField(
              appContext: context,
              length: 6,
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: Colors.grey,
                activeColor: Colors.blue,
                selectedColor: Colors.blueAccent,
              ),
              onChanged: (value) {
                print(value);
              },
              onCompleted: (value) {
                print("Completed: $value");
              },
            ),
            SizedBox(height: 25.h),
            Text(
              "لم يصل إليك الرمز؟",
              style: TextStyles.font12greyboldCairo,
            ),
            SizedBox(height: 5.h),
            InkWell(
              onTap: () {},
              child: Text(
                "إعادة إرسال الكود (30 ثانية)",
                style: TextStyles.font12greyboldCairo.copyWith(
                  color: ColorsManager.mainColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            PrimaryButton(
              text: "تأكيد",
              onPressed: () {},
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
