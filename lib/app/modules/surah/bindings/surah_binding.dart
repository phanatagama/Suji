import 'package:get/get.dart';
import 'package:suji/app/modules/surah/controllers/audio_controller.dart';

import '../controllers/surah_controller.dart';

class SurahBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SurahController>(
      SurahController(),
    );
    Get.lazyPut<AudioController>(
      () => AudioController(),
    );
    // Get.lazyPut<SurahProvider>(
    //   () => SurahProvider(),
    // );
  }
}
