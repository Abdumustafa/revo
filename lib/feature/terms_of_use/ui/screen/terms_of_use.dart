import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "شروط الاستخدام",
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "شروط الاستخدام",
              style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20.h),
            _title("المقدمة"),
            _text(
                "باستخدامك لتطبيق Revo فإنك توافق على الالتزام بجميع الشروط والأحكام المذكورة أدناه. "
                "يرجى قراءة هذه الشروط بعناية قبل استخدام التطبيق."),
            SizedBox(height: 20.h),
            _title("استخدام التطبيق"),
            _text(
                "يقدم تطبيق Revo خدمة عرض الوحدات العقارية فقط، ويُحظر استخدام التطبيق في أي أعمال مخالفة للقانون "
                "أو تنتهك حقوق أي جهة أخرى."),
            SizedBox(height: 20.h),
            _title("إنشاء الحساب"),
            _text(
                "عند إنشاء حساب داخل التطبيق، يجب عليك تقديم معلومات صحيحة ودقيقة. "
                "أنت مسؤول عن سرية بيانات الدخول إلى حسابك."),
            SizedBox(height: 20.h),
            _title("دقة المعلومات"),
            _text(
                "قد يتم عرض بعض الوحدات العقارية من خلال وسطاء أو معلنين خارجيين، ولذلك لا يضمن التطبيق دقة جميع المعلومات "
                "أو الأسعار المعروضة بالكامل."),
            SizedBox(height: 20.h),
            _title("الملكية الفكرية"),
            _text(
                "جميع المحتويات داخل التطبيق، بما في ذلك النصوص والصور والتصميمات والعلامة التجارية، "
                "محفوظة ولا يجوز نسخها أو استخدامها بدون إذن مسبق."),
            SizedBox(height: 20.h),
            _title("حدود المسؤولية"),
            _text(
                "لا يتحمل التطبيق أي مسؤولية عن أي تعاملات تتم خارج التطبيق بين المستخدمين وأصحاب الوحدات العقارية. "
                "كما لا يتحمل التطبيق أي أضرار ناتجة عن الاعتماد على المعلومات المعروضة."),
            SizedBox(height: 20.h),
            _title("التعديلات على الشروط"),
            _text(
                "يحتفظ التطبيق بالحق في تحديث أو تعديل شروط الاستخدام في أي وقت. "
                "سيتم إخطار المستخدم في حال وجود تغييرات جوهرية."),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: "Cairo",
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    );
  }

  // نص
  Widget _text(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Cairo",
          fontSize: 15.sp,
          height: 1.6,
          color: Colors.black87,
        ),
      ),
    );
  }
}
