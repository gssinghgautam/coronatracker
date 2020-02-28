package com.example.flutterquickstart

import io.flutter.app.FlutterApplication

import com.example.flutterquickstart.FirebaseCloudMessagingPluginRegistrant
import com.example.flutterquickstart.FlutterLocalNotificationPluginRegistrant
import com.example.flutterquickstart.FlutterPathProviderPluginRegistrant
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugins.firebasemessaging.FlutterFirebaseMessagingService

class Application : FlutterApplication(), PluginRegistry.PluginRegistrantCallback {

    override fun onCreate() {
        super.onCreate()
        FlutterFirebaseMessagingService.setPluginRegistrant(this)
    }

    override fun registerWith(registry: PluginRegistry?) {
        if (registry != null) {
            FirebaseCloudMessagingPluginRegistrant.registerWith(registry)
            FlutterLocalNotificationPluginRegistrant.registerWith(registry)
            FlutterPathProviderPluginRegistrant.registerWith(registry)
        }
    }

}