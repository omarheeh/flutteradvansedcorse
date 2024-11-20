import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteradvansedcorse/core/connection/api_result.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_request_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_response_model.dart';
import 'package:flutteradvansedcorse/feutures/login/data/reposotrys/login_reposotrys.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginReposotrys _loginReposotrys;
  LoginCubit(this._loginReposotrys) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(const LoginState.loading());
    ApiResult<LoginResponseModel> result = await _loginReposotrys.login(
        LoginRequestModel(
            email: emailController.text, password: passwordController.text));
    result.when(
      sucsess: (loginResponseModel) {
        emit(LoginState.sucsess(loginResponseModel));
      },
      failure: (errMessage) {
        emit(LoginState.failure(errMessage));
      },
    );
  }
}
