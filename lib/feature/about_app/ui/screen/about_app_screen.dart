import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "عن Revo",
          style: TextStyles.font18whiteboldCairo,
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 120.w,
                  height: 120.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.mainColor.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.mainColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "من نحن",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.mainColor,
                  fontFamily: "Cairo",
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                """
شركة Revo هي شركة رائدة في مجال الحلول العقارية الحديثة، تقدم تجربة متكاملة تجمع بين الاحترافية، الشفافية، والابتكار. نعمل على ربط العملاء بأفضل المشاريع السكنية والاستثمارية من خلال منصة سهلة الاستخدام توفر معلومات دقيقة وحديثة عن السوق العقاري.

نسعى في Revo إلى تبسيط رحلة البحث عن العقار المثالي، سواء كان سكنيًا أو استثماريًا، عبر تقديم خدمات استشارية موثوقة، وتحليلات أسعار واقعية، ودعم كامل في كل خطوة بداية من اختيار العقار وحتى إتمام عملية الشراء.

نعمل مع أكبر المطورين العقاريين في السوق ونلتزم بتقديم أعلى معايير الجودة، لأن ثقة عملائنا هي أساس نجاحنا. رؤيتنا هي أن نكون الوجهة الأولى لكل من يبحث عن عقار يجمع بين الراحة، الفخامة، والقيمة طويلة المدى. في Revo، نؤمن بأن العقار ليس مجرد وحدة سكنية، بل قرار مهم يشكل حياة كاملة، ولذلك نحرص على أن نقدم لك المعلومات الصحيحة والدعم الحقيقي لتتخذ القرار الأفضل.
  """,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black87,
                  height: 1.5,
                  fontFamily: "Cairo",
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "مميزاتنا",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.mainColor,
                  fontFamily: "Cairo",
                ),
              ),
              SizedBox(height: 10.h),
              _buildFeatureCard(
                icon: Icons.verified,
                title: "موثوقية عالية",
                description: "نعمل مع أفضل المطورين لضمان جودة كل مشروع.",
              ),
              _buildFeatureCard(
                icon: Icons.support_agent,
                title: "دعم مستمر",
                description: "فريقنا جاهز للإجابة على أي استفسار في أي وقت.",
              ),
              _buildFeatureCard(
                icon: Icons.insights,
                title: "تحليل السوق",
                description: "نوفر لك معلومات دقيقة عن أسعار السوق واتجاهاته.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: ColorsManager.mainColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: ColorsManager.mainColor, size: 28.sp),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 14.sp,
                      color: Colors.black54,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
