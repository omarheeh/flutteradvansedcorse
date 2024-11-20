import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvansedcorse/core/routes/routes.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_cubit.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_state.dart';
import 'package:flutteradvansedcorse/feutures/login/ui/widgets/login_button_text.dart';
import 'package:flutteradvansedcorse/feutures/login/ui/widgets/login_view_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back',
            style: AppTextStyles.font24BlueBold,
          ),
          verticalSpacing(8),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
            style: AppTextStyles.font14GrayRegular.copyWith(height: 1.5),
          ),
          verticalSpacing(36),
          const LoginViewForm(),
          verticalSpacing(36),
          const LoingButtonText(),
          BlocListener<LoginCubit, LoginState>(
            listenWhen: (previous, current) =>
                current is Sucsess || current is Loading || current is Failure,
            listener: (context, state) {
              state.whenOrNull(
                sucsess: (loginResponse) {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(Routes.home);
                },
                failure: (errMessage) {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                      content: Text(
                        errMessage,
                        style: AppTextStyles.font13BlueRegular,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Got it',
                            style: AppTextStyles.font12BlueRegular,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                loading: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  );
                },
              );
            },
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
