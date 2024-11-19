import 'package:flutter/material.dart';
import 'package:flutteradvansedcorse/feutures/on_bording/ui/widgets/onbording_view_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: OnbordingViewBody(),
        ),
      ),
    );
  }
}
