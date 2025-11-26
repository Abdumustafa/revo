import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/feature/home_screen/ui/widget/body_map_conntent/product_list_horizontal.dart';
import 'package:revo/feature/home_screen/ui/widget/category_and_show.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.categoryTitle});
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          CategoryShowAll(categoryTitle: categoryTitle),
          SizedBox(height: 10.h),
          ProductListHorizontal(),
        ],
      ),
    );
  }
}
