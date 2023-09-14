import 'package:get/get.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
import 'package:suji/app/modules/asmaul_husna/controllers/asmaul_husna_controller.dart';

class AsmaulHusnaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AsmaulHusnaController>(() => AsmaulHusnaController(
        getAsmaulHusnaUsecase: Get.find<GetAsmaulHusnaUsecase>()));
    Get.lazyPut(() =>
        GetAsmaulHusnaUsecase(surahRepository: Get.find<SurahRepository>()));
  }
}
