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
  static TextStyle font13DarkBlueMeduim = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12GrayMeduim = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font11GrayRegular = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font15GrayRegular = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14LightGrayMeduim = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.lightGray,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueMeduim = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font18DarkBlueBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16DarkBlueBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18DarkBlueSimiBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font15DarkBlueMeduim = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14MainBlueSimiBold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font32MainBlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font12MainBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13MainBlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font24MainBlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18WhiteSimiBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font18WhiteMeduim = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );
}
