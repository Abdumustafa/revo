import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/models/product_model.dart';

class SingleItemProduct extends StatelessWidget {
  const SingleItemProduct({
    super.key,
    required this.product,    

  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(right: 5.w, top: 6.h, bottom: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                Text(
                  product.title,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "Cairo",
                  ),
                ),
                Text(
                  product.description,
                  textAlign: TextAlign.right,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                    fontFamily: "Cairo",
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.secondaryColor,
                    fontFamily: "Cairo",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
