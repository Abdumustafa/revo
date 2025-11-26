import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';

class CategoryShowAll extends StatelessWidget {
  final String categoryTitle;

  const CategoryShowAll({
    required this.categoryTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            categoryTitle,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            "عرض الكل",
            style: TextStyle(
              color: ColorsManager.secondaryColor,
              fontSize: 10.sp,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
