import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:suji/app/data/services/background_service.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';
import 'package:suji/core/utils/date_utils.dart';

class NotificationController extends GetxController {
  final ShalatRepository shalatRepository = Get.find<ShalatRepository>();

  Box box = Hive.box('sujiSettingsBox');
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
      showErrorMessage('failed alarm setup'.tr);
    }
  }

  _startAlarm(Shalat shalatTime) async {
    // await NotificationService().showNotification(flutterLocalNotificationsPlugin);
    showSuccessMessage('alarm setup actived'.tr);
    return await AndroidAlarmManager.oneShotAt(
        DateTimeUtils.getPrayerTime(shalatTime), 0, BackgroundService.callback,
        exact: true, rescheduleOnReboot: true, wakeup: true);
  }

  _stopAlarm() async {
    await AndroidAlarmManager.cancel(0);
    showSuccessMessage('alarm setup deactived'.tr);
  }
}
