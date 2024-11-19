import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.titleStyle,
    this.borderRadius,
    required this.onPressed,
  });
  final String title;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: titleStyle ?? AppTextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
