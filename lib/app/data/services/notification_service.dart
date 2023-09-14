import 'dart:typed_data';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:suji/core/utils/logger.dart';

final selectNotificationSubject = BehaviorSubject<String?>();

class NotificationService {
  static NotificationService? _instance;
  static const _channelId = '1';
  static const _channelName = 'shalat_time';
  static const _channelDesc = 'channel for adzan notification';

  NotificationService._internal() {
    _instance = this;
  }

  factory NotificationService() => _instance ?? NotificationService._internal();

  Future<void> initNotifications(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse);
  }

  Future<void> showNotification(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    final Int64List vibrationPattern = Int64List(4);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 1000;
    vibrationPattern[2] = 5000;
    vibrationPattern[3] = 2000;
    final androidPlatformChannelSpecifics =  AndroidNotificationDetails(
        _channelId, _channelName,
        channelDescription: _channelDesc,
        importance: Importance.max,
        priority: Priority.high,
        sound: const RawResourceAndroidNotificationSound('mecca_56_22'),
        vibrationPattern: vibrationPattern,
        ticker: 'ticker');

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'Adzan',
      'Waktunya Shalat ${DateFormat('HH:mm').format(DateTime.now())}',
      platformChannelSpecifics,
      payload: 'plain notification',
    );
  }

  void _onDidReceiveNotificationResponse(NotificationResponse details) async {
    final payload = details.payload;
    // print('_onDidReceiveNotificationResponse dijalankan');
    Log.d('[NotificationService][_onDidReceiveNotificationResponse]',
        'Triggered!!!');
    if (payload != null) {
      Log.d('[Notification Payload]', payload);
      // print('notification payload: $payload');
    }
    selectNotificationSubject.add(payload);
  }

  static void configureSelectNotificationSubject() {
    selectNotificationSubject.stream.listen((String? payload) async {
      Get.toNamed('/shalat');
    });
  }
}
