import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:suji/app/data/services/background_service.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/utils/date_utils.dart';

class NotificationController extends GetxController {
  final ShalatRepository shalatRepository = Get.find<ShalatRepository>();

  Box box = Hive.box('alarmSettings');
  final _isAlarmActive = false.obs;
  bool get isAlarmActive => _isAlarmActive.value;

  @override
  void onInit() async {
    _isAlarmActive.value = box.get('isAlarmActive') ?? false;
    super.onInit();
  }

  setAlarm(Shalat shalatTime) {
    if (shalatTime.timingsFajr != null) {
      _isAlarmActive.value = !_isAlarmActive.value;
      box.put('isAlarmActive', isAlarmActive);
      isAlarmActive ? _startAlarm(shalatTime) : _stopAlarm();
    } else {
      Get.snackbar('Information', 'Failed alarm setup',
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(8.0),
          backgroundColor: AppColors.error);
    }
  }

  _startAlarm(Shalat shalatTime) async {
    // print('lah');
    // print(format().toString());
    return await AndroidAlarmManager.oneShotAt(
        // const Duration(minutes: 1),
        DateTimeUtils.getPrayerTime(shalatTime),
        0,
        // () async => await BackgroundService.callback(),
        // BackgroundService.printHello,
        BackgroundService.callback,
        // startAt: format(),
        exact: true,
        wakeup: true);
  }

  _stopAlarm() async {
    await AndroidAlarmManager.cancel(0);
  }

  static DateTime format() {
    // Date and Time Format
    final now = DateTime.now();
    final dateFormat = DateFormat('y/M/d');
    const timeSpecific = '01:59:00';
    final completeFormat = DateFormat('y/M/d H:m:s');

    // Today Format
    final todayDate = dateFormat.format(now);
    final todayDateAndTime = '$todayDate $timeSpecific';
    var resultToday = completeFormat.parseStrict(todayDateAndTime);

    // Tomorrow Format
    var formatted = resultToday.add(const Duration(days: 1));
    final tomorrowDate = dateFormat.format(formatted);
    final tomorrowDateAndTime = '$tomorrowDate $timeSpecific';
    var resultTomorrow = completeFormat.parseStrict(tomorrowDateAndTime);

    return now.isAfter(resultToday) ? resultTomorrow : resultToday;
  }
}
