import 'package:flutter/material.dart';
import 'package:revo/core/theaming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font18BlackBoldCairo = TextStyle(
      fontSize: 18,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
      fontFamily: 'Cairo');
  static TextStyle font16GreymediumCairo = TextStyle(
      fontSize: 16,
      color: Colors.grey[600],
      height: 1.6,
      fontWeight: FontWeightHelper.medium,
      fontFamily: 'Cairo');
}
