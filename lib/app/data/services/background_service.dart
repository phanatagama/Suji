import 'dart:isolate';
import 'dart:ui';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:suji/app/data/providers/shalat_local_data_source.dart';
import 'package:suji/app/data/services/notification_service.dart';
import 'package:suji/core/utils/date_utils.dart';
import 'package:suji/core/utils/logger.dart';
import 'package:suji/main.dart';

final ReceivePort port = ReceivePort();

class BackgroundService {
  static BackgroundService? _instance;
  static const String _isolateName = 'isolate';
  static SendPort? _uiSendPort;

  BackgroundService._internal() {
    _instance = this;
  }
  factory BackgroundService() => _instance ?? BackgroundService._internal();

  void initializeIsolate() {
    IsolateNameServer.registerPortWithName(port.sendPort, _isolateName);
  }

  static alarmFired() {
    Log.d('[BackgroundService][alarmFired]', 'ALARM FIRED!!!');
    // print("ALARM FIRED!!!");
  }

  @pragma('vm:entry-point')
  static Future<void> callback() async {
    Log.d('[BackgroundService][callback]', 'CALLBACK FIRED 2!!!');
    // print("ALARM FIRED 2!!!");
    final notificationService = NotificationService();
    await notificationService.showNotification(flutterLocalNotificationsPlugin);

    final ShalatLocalDataSourceImpl dataSource = ShalatLocalDataSourceImpl();
    final shalatTime = await dataSource.getShalatTimeByDate(DateTime.now());
    if (shalatTime != null) {
      await AndroidAlarmManager.oneShotAt(
          DateTimeUtils.getPrayerTime(shalatTime),
          0,
          BackgroundService.callback,
          exact: true,
          wakeup: true);
    }

    _uiSendPort ??= IsolateNameServer.lookupPortByName(_isolateName);
    _uiSendPort?.send(null);
  }

  Future<void> someTask() async {
    // print('Updated data from the background isolate');
    Log.d('[BackgroundService][someTask]',
        'Updated data from the background isolate');
  }
}
