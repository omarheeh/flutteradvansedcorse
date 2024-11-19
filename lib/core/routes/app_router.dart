import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/routes/routes.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/login/ui/view/login_view.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/view/onbording_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    // final Object? arguments = setting.arguments;

    switch (setting.name) {
      case Routes.onBording:
        return MaterialPageRoute(
          builder: (_) => const OnBordingView(),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("${setting.name} page is not found !"),
            ),
          ),
        );
    }
  }
}
