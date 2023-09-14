import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/usescases/get_shalat_time_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';
import 'package:suji/core/utils/logger.dart';

class ShalatController extends GetxController with StateMixin<Shalat> {
  final GetShalatTimeUsecase getShalatTimeUsecase;
  final LocationService locationService;

  ShalatController(
      {required this.getShalatTimeUsecase, required this.locationService});

  // final _state = BaseState.empty.obs;
  // BaseState get state => _state.value;

  // final _message = ''.obs;
  // String get message => _message.value;

  // final _shalat = Shalat().obs;
  // Shalat get shalat => _shalat.value;

  DateTime date = DateTime.now();
  Position? position;

  nextDay() async {
    if (position != null) {
      date = date.add(const Duration(days: 1));
      await getShalatTime(position!);
    }
  }

  beforeDay() async {
    if (position != null) {
      date = date.subtract(const Duration(days: 1));
      await getShalatTime(position!);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    position = await Geolocator.getLastKnownPosition();
    if (position != null) {
      await getShalatTime(position!);
    }
  }

  Future<void> refreshLocation() async {
    try {
      position = await locationService.determinePosition();
      if (position != null) {
        await getShalatTime(position!);
      }
    } catch (e) {
      showErrorMessage(e.toString());
    }
  }

  Future<void> getShalatTime(Position position) async {
    // _state.value = BaseState.loading;
    change(null, status: RxStatus.loading());
    final dataShalatTime = await getShalatTimeUsecase.invoke(date, position);
    dataShalatTime.fold((failure) {
      // _message.value = failure.message;
      // _state.value = BaseState.error;
      Log.e('[ShalatController][dataShalatTime]', failure.message);
      showErrorMessage(failure.message);
      change(null, status: RxStatus.error(failure.message));
    }, (result) {
      // _shalat(result);
      // _state.value = BaseState.success;
      change(result, status: RxStatus.success());
    });
  }
}
