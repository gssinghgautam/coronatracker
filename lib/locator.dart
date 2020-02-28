import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_quick_start/networking/dio_injector.dart';
import 'package:flutter_quick_start/services/common/dialog_service.dart';
import 'package:flutter_quick_start/services/common/navigation_service.dart';
import 'package:flutter_quick_start/services/common/notification_handler_service.dart';
import 'package:flutter_quick_start/services/repository/api_repository.dart';
import 'package:flutter_quick_start/services/repository/repository_service.dart';
import 'package:flutter_quick_start/services/storage/local_storage.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;
FirebaseAnalytics analytics = FirebaseAnalytics();

Future<void> setUpLocator() async {
  final prefs = await SharedPreferences.getInstance();
  locator
      .registerLazySingleton<StorageService>(() => LocalStorage(prefs: prefs));
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(() => DialogService());
  injector.init();
  locator.registerLazySingleton<RepositoryService>(
      () => ApiRepository(dio: injector.dio));

  NotificationHandlerService();
}
