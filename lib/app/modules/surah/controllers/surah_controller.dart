import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/theme/colors.dart';
import 'package:suji/core/utils/base_state.dart';

class SurahController extends GetxController {
  final SurahRepository surahRepository = Get.find<SurahRepository>();

  final _state = BaseState.empty.obs;
  BaseState get state => _state.value;

  final List<SurahDetail> _listAyat = <SurahDetail>[].obs;
  List<SurahDetail> get listAyat => _listAyat;

  @override
  void onInit() {
    super.onInit();
    getAyahBySurahNumber();
  }

  Future<void> getAyahBySurahNumber() async {
    _state.value = BaseState.loading;
    final result = await surahRepository
        .getAyahBySurahNumber(int.parse(Get.parameters['number']!));

    result.fold((failure) {
      _state.value = BaseState.error;
      Get.snackbar('Information', failure.message,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(8.0),
          backgroundColor: AppColors.error);
    }, (surahData) {
      _listAyat.assignAll(surahData);
      _state.value = BaseState.success;
    });
  }
}
