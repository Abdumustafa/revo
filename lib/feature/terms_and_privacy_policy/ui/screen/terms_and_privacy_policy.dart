import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/styles.dart';

class TermsPrivacyPage extends StatelessWidget {
  const TermsPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorsManager.mainColor,
        elevation: 0.5,
        title: Text(
          "الشروط وسياسة الخصوصية",
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              _buildPolicyCard(
                title: 'شروط الاستخدام',
                onTap: () {
                  Get.toNamed("/TermsOfUse");
                },
              ),
              SizedBox(height: 16.h),
              _buildPolicyCard(
                title: 'سياسة الخصوصية',
                onTap: () {
                  Get.toNamed("/PrivacyPolicy");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPolicyCard({
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      splashColor: ColorsManager.mainColor.withOpacity(0.1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "Cairo",
                color: Colors.black87,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.sp,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
    );
  }
}
