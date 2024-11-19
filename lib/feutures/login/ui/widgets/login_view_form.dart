import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/app_button.dart';
import 'package:flutteradvansedcorse/core/widgets/app_text_form_field.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({
    super.key,
  });

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  bool isObserver = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const AppTextFormField(
            hintText: 'Email',
          ),
          verticalSpacing(16),
          AppTextFormField(
            obscureText: isObserver,
            hintText: 'Password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObserver = !isObserver;
                });
              },
              child: Icon(
                isObserver ? Icons.visibility_off : Icons.visibility,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          verticalSpacing(25),
          GestureDetector(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.font13BlueRegular,
              ),
            ),
          ),
          verticalSpacing(32),
          AppButton(
            title: "Login",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
