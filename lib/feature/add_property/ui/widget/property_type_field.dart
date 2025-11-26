import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/styles.dart';
import 'package:revo/core/widget/text_feild_app.dart';

class PropertyTypeField extends StatelessWidget {
  const PropertyTypeField({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.isPassword = false,
  });

  final String title;
  final String hintText;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.font18mainColorboldCairo.copyWith(
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 6.h),
          TextFieldApp(
            hintText: hintText,
            controller: controller,
            minLines: minLines,
            maxLines: maxLines,
            keyboardType: keyboardType,
            isPassword: isPassword,
          ),
        ],
      ),
    );
  }
}
