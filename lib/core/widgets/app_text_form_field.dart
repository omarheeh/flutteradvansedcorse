import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.borderRadius,
    this.backgroundColor,
    this.contentPadding,
    this.suffixIcon,
    this.obscureText = false,
    this.hintStyle,
    this.controller,
    this.validation,
  });
  final String? hintText;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: AppTextStyles.font14BlackRegular,
      validator: validation,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 17.h,
            ),
        fillColor: backgroundColor ?? const Color(0xffFDFDFF),
        filled: true,
        isDense: true,
        hintStyle: hintStyle ?? AppTextStyles.font14HintColorRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightGray,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
