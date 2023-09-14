import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/data/services/notification_service.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/domain/usescases/get_daily_pray_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';
import 'package:suji/core/theme/colors.dart';

class MenuController extends GetxController with StateMixin<List<DailyPray>> {
  final GetDailyPrayUsecase getDailyPrayUsecase;
  final LocationService locationService;

  // final _state = BaseState.empty.obs;
  // BaseState get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final RxList<DailyPray> _dataDailyPray = <DailyPray>[].obs;
  // List<DailyPray> get dataDailyPray => _dataDailyPray;

  MenuController(
      {required this.getDailyPrayUsecase, required this.locationService});

  @override
  void onInit() async {
    super.onInit();
    await getDailyPray();
    NotificationService.configureSelectNotificationSubject();
    // port.listen((_) => BackgroundService.alarmFired());
  }

  @override
  void onClose() {
    selectNotificationSubject.close();
    super.onClose();
  }

  toShalat() async {
    try {
      await locationService.determinePosition();
      return Get.toNamed('/shalat');
    } catch (e) {
      Get.snackbar(
        'information'.tr,
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(8.0),
        backgroundColor: AppColors.error,
      );
    }
  }

  Future<void> getDailyPray() async {
    // _state.value = BaseState.loading;
    change([], status: RxStatus.loading());
    final result = await getDailyPrayUsecase.invoke();

    result.fold((failure) {
      // _message.value = l.toString();
      // _state.value = BaseState.error;
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (result) {
      // _dataDailyPray.assignAll(r);
      // _state.value = BaseState.success;
      change(result, status: RxStatus.success());
    });
  }
}
