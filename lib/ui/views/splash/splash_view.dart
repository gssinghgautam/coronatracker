import 'package:flutter/material.dart';
import 'package:flutter_quick_start/localization/localization_keys.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';
import 'package:flutter_quick_start/ui/widgets/error_widget_view.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              "assets/images/intro_one_bg.png",
            ),
          ),
        ),
      ),
    );
  }
}
