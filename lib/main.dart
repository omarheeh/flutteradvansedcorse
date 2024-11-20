import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/core/di/dependence_injection.dart';
import 'package:flutteradvansedcorse/core/routes/app_router.dart';
import 'package:flutteradvansedcorse/doc_app.dart';

void main() {
  setup();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
