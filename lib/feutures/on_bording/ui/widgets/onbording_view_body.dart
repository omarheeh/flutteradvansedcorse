import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/widgets/doctor_image_and_text.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/widgets/get_started_button.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/widgets/logo_and_name.dart';

class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const LogoAndName(),
          verticalSpacing(30),
          const DoctorImageAndText(),
          verticalSpacing(18),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.w,
            ),
            child: Column(
              children: [
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: AppTextStyles.font12GrayRegular,
                  textAlign: TextAlign.center,
                ),
                verticalSpacing(32),
                const GetStartedButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
