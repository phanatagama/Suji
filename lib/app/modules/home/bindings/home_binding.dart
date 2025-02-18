import 'package:get/get.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';

import '../controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(getAllSurahUsecase: Get.find<GetAllSurahUsecase>()),
    );
    Get.lazyPut(
        () => GetAllSurahUsecase(surahRepository: Get.find<SurahRepository>()));
  }
}
