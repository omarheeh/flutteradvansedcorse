import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteradvansedcorse/core/routes/app_router.dart';
import 'package:flutteradvansedcorse/core/routes/routes.dart';
import 'package:flutteradvansedcorse/core/theme/app_theme.dart';

class DocApp extends StatelessWidget {
  const DocApp({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.themeData,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBording,
      ),
    );
  }
}
