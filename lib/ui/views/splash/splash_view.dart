import 'package:flutter/material.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';
import 'package:flutter_quick_start/ui/shared/ui_helper.dart';
import 'package:flutter_quick_start/viewmodels/splash/splash_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider_architecture/provider_architecture.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SplashViewModel>.withConsumer(
        viewModel: SplashViewModel(),
        onModelReady: (model) => model.handleStartupLogin(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: white,
            body: Container(
              width: screenWidth(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Lottie.asset(
                      'assets/images/corona_logo.json',
                      height: 250.0,
                    ),
                  ),
                  verticalSpaceMediumSmall,
                  RichText(
                    text: TextSpan(
                        text: "Corona",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Tracker",
                            style: GoogleFonts.nunitoSans(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0,
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          );
        });
  }
}
