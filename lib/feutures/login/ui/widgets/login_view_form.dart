import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteradvansedcorse/core/helper/app_validation.dart';
import 'package:flutteradvansedcorse/core/theme/app_colors.dart';
import 'package:flutteradvansedcorse/core/theme/app_text_styles.dart';
import 'package:flutteradvansedcorse/core/widgets/app_button.dart';
import 'package:flutteradvansedcorse/core/widgets/app_text_form_field.dart';
import 'package:flutteradvansedcorse/core/widgets/spacers.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_cubit.dart';

class LoginViewForm extends StatefulWidget {
  const LoginViewForm({
    super.key,
  });

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  bool isObserver = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            controller: context.read<LoginCubit>().emailController,
            validation: (email) {
              return AppValidation.emailValidation(email);
            },
          ),
          verticalSpacing(16),
          AppTextFormField(
            obscureText: isObserver,
            hintText: 'Password',
            validation: (password) {
              return AppValidation.passwordValidation(password);
            },
            controller: context.read<LoginCubit>().passwordController,
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
            onPressed: () {
              if (context.read<LoginCubit>().formKey.currentState!.validate()) {
                context.read<LoginCubit>().login();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
