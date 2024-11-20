import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutteradvansedcorse/core/di/dependence_injection.dart';
import 'package:flutteradvansedcorse/core/routes/routes.dart';
import 'package:flutteradvansedcorse/feutures/home/ui/view/home_view.dart';
import 'package:flutteradvansedcorse/feutures/login/logic/cubit/login_cubit.dart';
import 'package:flutteradvansedcorse/feutures/login/ui/view/login_view.dart';
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
          builder: (_) => BlocProvider(
            create: (context) => di<LoginCubit>(),
            child: const LoginView(),
          ),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
