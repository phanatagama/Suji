import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_ayah_by_surah_number_usecase.dart';
import 'package:suji/app/modules/surah/controllers/audio_controller.dart';

import '../controllers/surah_controller.dart';

class SurahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurahController>(
      () => SurahController(
          getAyahBySurahNumberUsecase: Get.find<GetAyahBySurahNumberUsecase>()),
    );
    Get.lazyPut(() => GetAyahBySurahNumberUsecase(
        surahRepository: Get.find<SurahRepository>()));
    Get.lazyPut<AudioController>(
      () => AudioController(connectivity: Get.find<Connectivity>()),
    );
  }
}
