import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_quick_start/locator.dart';
import 'package:flutter_quick_start/log.dart';
import 'package:flutter_quick_start/models/notification/push_notification_model.dart';
import 'package:flutter_quick_start/services/common/navigation_service.dart';
import 'package:flutter_quick_start/services/storage/storage_service.dart';

FlutterLocalNotificationsPlugin notificationsPlugin =
    FlutterLocalNotificationsPlugin();

final log = getLogger("NotificationHandlerService");

//private variable to check if Notification is already Selected;
bool _isNotificationSelected = false;

//Function to handle Notification data in background. Only Work on Android
Future<dynamic> backgroundMessageHandler(Map<String, dynamic> message) {
  return Future<void>.value();
}

//Function to handle Notification Click.
Future<void> onSelectNotification(String payload) {
  if (!_isNotificationSelected) {
    _isNotificationSelected = true;

    _isNotificationSelected = false;
  }
  return Future<void>.value();
}

//Navigate to a route when click on the notification
Future<dynamic> handleNotificationNavigation(PushNotificationModel data) {
  var routeName;
  var arguments;
  return locator<NavigationService>()
      .navigateTo(routeName, arguments: arguments);
}

//Function to parse Notification Data key
PushNotificationModel parseNotificationData(Map<String, dynamic> data){
  return PushNotificationModel();
}

//Function to Parse and Show Notification when app is in foreground
Future<dynamic> onMessage(Map<String, dynamic> message){
  return Future<void>.value();
}

//Function to Handle notification click if app is in background
Future<dynamic> onResume(Map<String, dynamic> message){
  return Future<void>.value();
}
//Function to Handle notification click if app is not in foreground neither in background
Future<dynamic> onLaunch(Map<String, dynamic> message){
  return Future<void>.value();
}

class NotificationHandlerService {
  FirebaseMessaging _fcm = FirebaseMessaging();

  static final NotificationHandlerService _singleton = NotificationHandlerService._internal();

  factory NotificationHandlerService(){
    return _singleton;
  }

  NotificationHandlerService._internal();

  void initializeFcm() async{
    var initializationSettingsAndroid =
    AndroidInitializationSettings('in_app_notification');
    var initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    await notificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (value) => onSelectNotification(value));

    if (Platform.isIOS) {
    _fcm.onIosSettingsRegistered.listen((data) {
        _saveDeviceToken();
      });

      await _fcm.requestNotificationPermissions(IosNotificationSettings(
          sound: true, alert: true, badge: true, provisional: true));
    } else {
      _saveDeviceToken();
    }

    _fcm.configure(
      onMessage: onMessage,
      onBackgroundMessage:
      Platform.isAndroid ? backgroundMessageHandler : null,
      onLaunch: onLaunch,
      onResume: onResume,
    );
  }

  // save the token  OR subscribe to a topic here
  _saveDeviceToken() async {
    String fcmToken = await _fcm.getToken();
    print("$fcmToken");
    await locator<StorageService>().savePushToken(fcmToken);
    //Subscribe to FCM Topic Here
  }

  Future<void> onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
  }
}
