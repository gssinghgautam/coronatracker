import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_quick_start/localization/app_localizations.dart';
import 'package:flutter_quick_start/localization/application.dart';
import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';

class BaseViewModel extends ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;

  void setBusy(bool value) {
    _loading = value;
    notifyListeners();
  }

  AppLocalizationsDelegate _delegate;

  initDelegate() {
    _delegate = AppLocalizationsDelegate(
        newLocale:
        prefs.fetchLocale != null ? Locale(prefs.fetchLocale) : null);
    application.onLocaleChanged = _changeLanguage;
  }

  final prefs = locator<StorageService>();

  Locale _appLocale;

  AppLocalizationsDelegate get delegate => _delegate;

  String get languageName => prefs.fetchLocale;

  Language get currentLanguage {
    if (languageName == "en") {
      return Language(
        name: "English",
        code: "en",
        flag: "assets/images/english.png",
      );
    }

    if (languageName == "es") {
      return Language(
        name: "Espanol",
        code: "es",
        flag: "assets/images/espanol.png",
      );
    }
    return null;
  }

  void _changeLanguage(Locale type) async {
    if (_appLocale == type) {
      return;
    }
    if (type == Locale("es")) {
      _appLocale = Locale("es");
      await prefs.saveLocale('es');
    } else {
      _appLocale = Locale("en");
      await prefs.saveLocale('en');
    }
    _delegate = AppLocalizationsDelegate(newLocale: _appLocale);
    notifyListeners();
  }
}
