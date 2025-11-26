import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "سياسة الخصوصية",
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
              "سياسة الخصوصية",
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
                "في تطبيق Revo نحن نلتزم بحماية خصوصية المستخدمين والحفاظ على سرية بياناتهم. "
                "تهدف هذه السياسة إلى توضيح كيفية جمع البيانات، واستخدامها، وحمايتها عند استخدامك للتطبيق."),
            SizedBox(height: 20.h),
            _title("المعلومات التي نقوم بجمعها"),
            _text(
                "يقوم التطبيق بجمع بعض البيانات الضرورية لتحسين تجربة الاستخدام، وتشمل:\n"
                "- معلومات تسجيل الحساب مثل الاسم ورقم الهاتف.\n"
                "- بيانات الاستخدام الأساسية داخل التطبيق.\n"
                "- بيانات الجهاز (نوع الهاتف، إصدار النظام) لتحسين الأداء.\n\n"
                "لا نقوم بجمع أي بيانات حساسة أو شخصية غير ضرورية."),
            SizedBox(height: 20.h),
            _title("كيفية استخدام المعلومات"),
            _text("نحن نستخدم البيانات التي يتم جمعها للأغراض التالية:\n"
                "- تحسين جودة الخدمة وتجربة المستخدم.\n"
                "- عرض وحدات عقارية تناسب اهتماماتك.\n"
                "- التواصل معك في حال وجود تحديثات أو إشعارات مهمة.\n"
                "- معالجة أي مشاكل تقنية أو دعم فني."),
            SizedBox(height: 20.h),
            _title("حماية البيانات"),
            _text(
                "نستخدم مجموعة من إجراءات الأمان التقنية والتنظيمية لحماية بياناتك من الوصول غير المصرح به. "
                "لا تتم مشاركة بياناتك مع أي جهة خارجية إلا في الحالات التي يتطلبها القانون."),
            SizedBox(height: 20.h),
            _title("مشاركة البيانات"),
            _text(
                "لا نقوم ببيع أو مشاركة بيانات المستخدمين مع أي أطراف خارجية لأغراض تسويقية. "
                "قد نشارك البيانات مع جهات موثوقة فقط في حال كانت ضرورية لتشغيل بعض خدمات التطبيق، "
                "وبما لا ينتهك خصوصيتك."),
            SizedBox(height: 20.h),
            _title("ملفات تعريف الارتباط (Cookies)"),
            _text(
                "قد يستخدم التطبيق تقنيات مشابهة للكوكيز بهدف تحسين الأداء وتسهيل استخدام التطبيق، "
                "ولا يتم استخدامها لجمع معلومات شخصية دون إذنك."),
            SizedBox(height: 20.h),
            _title("حقوق المستخدم"),
            _text("يملك المستخدم الحق في:\n"
                "- طلب معرفة البيانات التي يتم جمعها عنه.\n"
                "- طلب تعديل أو حذف بياناته.\n"
                "- إلغاء حسابه في أي وقت.\n"
                "- رفض مشاركة بيانات معينة لا تؤثر على تشغيل التطبيق."),
            SizedBox(height: 20.h),
            _title("التعديلات على سياسة الخصوصية"),
            _text(
                "قد نقوم بتحديث هذه السياسة من وقت لآخر. سيتم إخطار المستخدم في حال وجود تغييرات مهمة. "
                "استمرارك في استخدام التطبيق بعد التعديل يُعد موافقة ضمنية على السياسة المحدثة."),
            SizedBox(height: 20.h),
            _title("التواصل معنا"),
            _text(
                "إذا كان لديك أي أسئلة تخص سياسة الخصوصية أو كيفية التعامل مع بياناتك، "
                "يمكنك التواصل معنا عبر البريد أو رقم الدعم الخاص بالتطبيق."),
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
