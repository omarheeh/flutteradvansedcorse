import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';

class LoingButtonText extends StatelessWidget {
  const LoingButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                text: 'By logging, you agree to our ',
                style: AppTextStyles.font11VeryGrayRegular,
              ),
              TextSpan(
                text: 'Terms & Conditions ',
                style: AppTextStyles.font11BlackRegular,
              ),
              TextSpan(
                text: 'and ',
                style: AppTextStyles.font11VeryGrayRegular,
              ),
              TextSpan(
                text: 'PrivacyPolicy',
                style: AppTextStyles.font11BlackRegular,
              ),
            ],
          ),
        ),
        verticalSpacing(24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account yet? ",
              style: AppTextStyles.font11BlackRegular,
            ),
            GestureDetector(
              child: Text(
                " Sign Up",
                style: AppTextStyles.font11BlackRegular.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
