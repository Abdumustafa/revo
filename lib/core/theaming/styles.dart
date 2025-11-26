import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revo/core/theaming/colors.dart';
import 'package:revo/core/theaming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font18BlackBoldCairo = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
    fontFamily: 'Cairo',
  );

  static TextStyle font16GreymediumCairo = TextStyle(
    fontSize: 16.sp,
    color: Colors.grey[600],
    height: 1.6,
    fontWeight: FontWeightHelper.medium,
    fontFamily: 'Cairo',
  );

  static TextStyle font18blackmediumCairo = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
    fontSize: 18.sp,
    fontFamily: "Cairo",
  );

  static TextStyle font18whiteboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 18.sp,
    fontFamily: "Cairo",
    color: Colors.white,
  );

  static TextStyle font18mainColorboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 18.sp,
    fontFamily: "Cairo",
    color: ColorsManager.mainColor,
  );

  static TextStyle font10whiteboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 10.sp,
    fontFamily: "Cairo",
    color: Colors.white,
  );

  static TextStyle font12blackmediumCairo = TextStyle(
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
    fontFamily: "Cairo",
    color: Colors.black54,
  );

  static TextStyle font22mainColorboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 22.sp,
    fontFamily: "Cairo",
    color: ColorsManager.mainColor,
  );

  static TextStyle font12greyboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 12.sp,
    fontFamily: "Cairo",
    color: Colors.grey[400],
  );

  static TextStyle font22ColorboldCairo = TextStyle(
    fontWeight: FontWeightHelper.extraBold,
    fontSize: 22.sp,
    fontFamily: "Cairo",
    color: ColorsManager.secondaryColor,
    height: 1.6,
  );

  static TextStyle font22whiteboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 22.sp,
    fontFamily: "Cairo",
    color: Colors.white,
  );

  static TextStyle font14whiteboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 14.sp,
    fontFamily: "Cairo",
    color: Colors.white,
  );

  static TextStyle font12whiteboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 12.sp,
    fontFamily: "Cairo",
    color: Colors.white,
  );

  static TextStyle font20whiteShadowboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 20.sp,
    fontFamily: "Cairo",
    color: Colors.white,
    shadows: [
      Shadow(
        color: Colors.black54,
        blurRadius: 8.r,
        offset: Offset(0, 2),
      ),
    ],
  );

  static TextStyle font14whiteShadowboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 14.sp,
    fontFamily: "Cairo",
    color: Colors.white.withOpacity(0.9),
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.5),
        blurRadius: 6.r,
        offset: const Offset(0, 1),
      ),
    ],
  );

  static TextStyle font12whiteshadowsboldCairo = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 12.sp,
    fontFamily: "Cairo",
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.5),
        blurRadius: 6.r,
        offset: const Offset(0, 1),
      ),
    ],
    color: Colors.white.withOpacity(0.9),
  );
}
