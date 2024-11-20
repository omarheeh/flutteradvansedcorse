import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/connection/api_constants.dart';
import 'package:flutteradvansedcorse/feutures/login/data/models/login_request_model.dart';
import 'package:flutteradvansedcorse/feutures/login/ui/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: LoginViewBody(),
        ),
        floatingActionButton: IconButton(
            onPressed: () async {
              Dio dio = Dio();
              final data = LoginRequestModel(
                  email: 'omartst@aa.com', password: 'Omar22@kkkkk');
              final response = await dio.post(
                'https://vcare.integration25.com/api/auth/login', // تأكد من أن الـ baseUrl و login موجودين في ApiConstants
                data: data.toJson(),
                options: Options(
                  headers: {
                    'Content-Type': 'application/json', // تحديد نوع المحتوى
                  },
                ),
              );
              log(response.data.toString());
            },
            icon: Icon(Icons.ad_units)),
      ),
    );
  }
}
