import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/usescases/get_shalat_time_usecase.dart';
import 'package:suji/app/widgets/custom_snackbar.dart';
import 'package:suji/core/utils/logger.dart';

final class ShalatController extends GetxController with StateMixin<Shalat> {
  final GetShalatTimeUsecase getShalatTimeUsecase;
  final LocationService locationService;
  late StreamSubscription<Position> _positionStream;

  ShalatController({
    required this.getShalatTimeUsecase,
    required this.locationService,
  });

  final _date = DateTime.now().obs;
  get date => DateFormat('dd MMM y').format(_date.value);
  Position? position;

  nextDay() async {
    if (position != null) {
      _date.value = _date.value.add(const Duration(days: 1));
      await getShalatTime(position!);
    }
  }

  beforeDay() async {
    if (position != null) {
      _date.value = _date.value.subtract(const Duration(days: 1));
      await getShalatTime(position!);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    _positionStream =
        Geolocator.getPositionStream().listen((newPosition) async {
      position = newPosition;
      await getShalatTime(newPosition);
    });
    // position = await Geolocator.getLastKnownPosition();
    // if (position != null) {
    //   await getShalatTime(position!);
    // }
  }

  @override
  void onClose() {
    _positionStream.cancel();
    super.onClose();
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
    change(null, status: RxStatus.loading());
    final dataShalatTime =
        await getShalatTimeUsecase.invoke(_date.value, position);

    dataShalatTime.fold((failure) {
      Log.e('[ShalatController][dataShalatTime]', failure.message);
      showErrorMessage(failure.message);
      change(null, status: RxStatus.error(failure.message));
    }, (result) {
      change(result, status: RxStatus.success());
    });
  }
}
