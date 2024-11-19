import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvansedcorse/core/helper/font_weight_helper.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';

class AppTextStyles {
  static TextStyle font28BlackBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.textBlack,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}
