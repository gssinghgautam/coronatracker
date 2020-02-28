import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quick_start/localization/app_localizations.dart';
import 'package:flutter_quick_start/localization/application.dart';
import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/router/router.dart';
import 'package:flutter_quick_start/services/common/connectivity_service.dart';
import 'package:flutter_quick_start/services/common/dialog_service.dart';
import 'package:flutter_quick_start/services/common/navigation_service.dart';
import 'package:flutter_quick_start/ui/shared/base_view.dart';
import 'package:flutter_quick_start/ui/views/splash/splash_view.dart';
import 'package:flutter_quick_start/viewmodels/main/main_view_model.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/provider_architecture.dart';

void main() async {
  //Ensure all Platform Plugins Initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Register all the models and Service before the app starts
  await setUpLocator();

  //Set Logger Level
  Logger.level = Level.verbose;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      create: (context) => ConnectivityService().connectivityStream,
      child: ViewModelProvider<MainViewModel>.withConsumer(
        viewModel: MainViewModel(),
        onModelReady: (model) {},
        builder: (context, model, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: analytics)
            ],
            localizationsDelegates: [
              model.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: application.supportedLocales(),
            builder: (context, child) => Navigator(
              key: locator<DialogService>().navigatorKey,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => BaseView(child: child),
              ),
            ),
            navigatorKey: locator<NavigationService>().navigationKey,
            home: SplashView(),
            onGenerateRoute: generateRoute,
            onGenerateTitle: (context) => AppLocalizations.of(context).translate("key"),
          );
        },
      ),
    );
  }
}
