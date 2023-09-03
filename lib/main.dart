import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:suji/app/data/services/background_service.dart';
import 'package:suji/app/data/services/notification_service.dart';
import 'package:suji/core/theme/light_theme.dart';
import 'package:suji/core/values/internationalization.dart';

import 'app/routes/app_pages.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  /// ensure call this line if initialize() call happens before runApp()
  WidgetsFlutterBinding.ensureInitialized();

  /// openBox for adzan alarm settings on [NotificationsController]
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  await Hive.openBox('alarmSettings');

  /// Initialize the background service
  final backgroundService = BackgroundService();
  backgroundService.initializeIsolate();
  await AndroidAlarmManager.initialize();

  /// Initialize the notification service
  final notificationService = NotificationService();
  await notificationService.initNotifications(flutterLocalNotificationsPlugin);

  runApp(
    GetMaterialApp(
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      theme: appTheme,
      title: 'Application',
      initialRoute: AppPages.INITIAL,
      // "/lab",
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
