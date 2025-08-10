import 'package:docdoc/core/helpers/font_weight_helper.dart';
import 'package:docdoc/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font11GrayRegular = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font32MainBlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18WhiteSimiBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
}
