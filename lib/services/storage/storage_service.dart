abstract class StorageService {
  String get authToken;

  String get pushToken;

  String get fetchLocale;

  Future<bool> savePushToken(String value);

  Future<bool> saveAuthToken(String value);

  Future<bool> saveLocale(String value);

  Future<bool> clearAll();
}
