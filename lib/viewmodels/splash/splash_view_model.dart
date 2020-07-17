import 'package:flutter_quick_start/constants/routes_name.dart';
import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/services/common/navigation_service.dart';
import 'package:flutter_quick_start/viewmodels/base/base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  final _service = locator<NavigationService>();

  void handleStartupLogin() {
    Future.delayed(Duration(seconds: 1), () {
      _service.navigateUntilRemoved(HomeRoutePage);
    });
  }
}
