import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/feature/notifications_screen/ui/widget/Notifications_Item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "الإشعارات",
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
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          NotificationsItms(
            title: "تم قبول طلبك",
            message: "تمت الموافقة على طلب العقار الخاص بك بنجاح.",
            time: "منذ دقيقة",
            icon: Icons.check_circle_rounded,
            iconColor: Colors.green,
          ),
          SizedBox(height: 12.h),
          NotificationsItms(
            title: "عرض جديد",
            message: "تم إضافة عرض جديد قد يعجبك. قم بمشاهدته الآن.",
            time: "قبل 10 دقائق",
            icon: Icons.local_offer_rounded,
            iconColor: Colors.blue,
          ),
          SizedBox(height: 12.h),
          NotificationsItms(
            title: "رسالة من الدعم",
            message: "برجاء استكمال بيانات حسابك للاستمرار.",
            time: "قبل ساعة",
            icon: Icons.message_rounded,
            iconColor: Colors.orange,
          ),
          SizedBox(height: 12.h),
          NotificationsItms(
            title: "تحديث مهم",
            message: "تم تحديث نظام التطبيق ليوفر لك تجربة أفضل.",
            time: "أمس",
            icon: Icons.update_rounded,
            iconColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
