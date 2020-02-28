import 'package:flutter/cupertino.dart';
import 'package:flutter_quick_start/constants/key_provider.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends StorageService {
  final SharedPreferences prefs;

  LocalStorage({@required this.prefs}) : assert(prefs != null);

  @override
  String get authToken => prefs.getString(AUTH_TOKEN) ?? "";

  @override
  String get pushToken => prefs.getString(PUSH_TOKEN) ?? "";

  @override
  Future<bool> saveAuthToken(String value) {
    return prefs.setString(AUTH_TOKEN, value);
  }

  @override
  Future<bool> savePushToken(String value) {
    return prefs.setString(PUSH_TOKEN, value);
  }

  @override
  Future<bool> saveLocale(String value) {
    return prefs.setString(APP_LOCALE, value);
  }

  @override
  String get fetchLocale => "";
}
