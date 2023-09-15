import 'package:get/get.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/data/services/notification_service.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/domain/usescases/get_daily_pray_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';

class MenuController extends GetxController with StateMixin<List<DailyPray>> {
  final GetDailyPrayUsecase getDailyPrayUsecase;
  final LocationService locationService;

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
      showErrorMessage(e.toString());
    }
  }

  Future<void> getDailyPray() async {
    change([], status: RxStatus.loading());
    final result = await getDailyPrayUsecase.invoke();

    result.fold((failure) {
      showErrorMessage(failure.message);
      change([], status: RxStatus.error(failure.message));
    }, (result) {
      change(result, status: RxStatus.success());
    });
  }
}
