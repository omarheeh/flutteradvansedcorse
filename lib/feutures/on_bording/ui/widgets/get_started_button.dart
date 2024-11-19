import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/routes/routes.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(Routes.login);
      },
      child: Text(
        "Get Started",
        style: AppTextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
