import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/utils/base_state.dart';
import 'package:suji/core/utils/logger.dart';

class ShalatController extends GetxController {
  final ShalatRepository shalatRepository = Get.find<ShalatRepository>();
  final LocationService _locationService = LocationService();

  final _state = BaseState.empty.obs;
  BaseState get state => _state.value;

  final _shalat = Shalat().obs;
  Shalat get shalat => _shalat.value;

  @override
  void onInit() async {
    super.onInit();
    try {
      final position = await _locationService.determinePosition();
      getShalatTime(position);
    } catch (e) {
      Get.back();
      Get.snackbar(
        'Information',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(8.0),
        backgroundColor: AppColors.error,
      );
    }
  }

  Future<void> refreshLocation() async {
    try {
      final position = await _locationService.determinePosition();
      shalatRepository.fetchShalatTime(position);
      getShalatTime(position);
    } catch (e) {
      Get.back();
      Get.snackbar(
        'Information',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(8.0),
        backgroundColor: AppColors.error,
      );
    }
  }

  void getShalatTime(Position position) async {
    _state.value = BaseState.loading;
    final dataShalatTime = await shalatRepository.getShalatTime(position);
    dataShalatTime.fold((failure) {
      _state.value = BaseState.error;
       Get.snackbar(
        'Information',
        failure.message,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.all(8.0),
        backgroundColor: AppColors.error,
      );
      Log.e('[ShalatController][dataShalatTime]', failure.message);
    }, (result) {
      _shalat(result);
      _state.value = BaseState.success;
    });
  }
}
