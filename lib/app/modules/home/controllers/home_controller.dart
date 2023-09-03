import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/services/background_service.dart';
import 'package:suji/app/data/services/notification_service.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/utils/base_state.dart';

class HomeController extends GetxController {
  final SurahRepository surahRepository = Get.find<SurahRepository>();

  final _state = BaseState.empty.obs;
  BaseState get state => _state.value;

  final RxList<Surah> _listSurah = <Surah>[].obs;
  List<Surah> get listSurah => _listSurah;

  @override
  void onInit() {
    super.onInit();
    getAllSurah();
    NotificationService.configureSelectNotificationSubject();
    port.listen((_) => BackgroundService.alarmFired());
  }

  @override
  void onClose() {
    selectNotificationSubject.close();
    super.onClose();
  }

  Future<void> getAllSurah() async {
    _state.value = BaseState.loading;
    final result = await surahRepository.getAllSurah();

    result.fold((failure) {
      _state.value = BaseState.error;
      Get.snackbar('Information', failure.message,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(8.0),
      backgroundColor: AppColors.error);
    }, (surahData) {
      _listSurah.assignAll(surahData);
      _state.value = BaseState.success;
    });
  }
}
