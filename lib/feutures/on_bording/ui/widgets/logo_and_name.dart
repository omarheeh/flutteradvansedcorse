import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutteradvansedcorse/core/helper/assets_maneger.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';

class LogoAndName extends StatelessWidget {
  const LogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManeger.logo),
        horizanterSpacing(8),
        Text(
          'Docdoc',
          style: AppTextStyles.font28BlackBold,
        ),
      ],
    );
  }
}
