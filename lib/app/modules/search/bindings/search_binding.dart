import 'package:get/get.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';
import 'package:suji/app/domain/usescases/get_surah_by_query_usecase.dart';
import 'package:suji/app/modules/search/controllers/search_controller.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MySearchController>(() => MySearchController(
        getAllSurahUsecase: Get.find<GetAllSurahUsecase>(),
        getSurahByQueryUsecase: Get.find<GetSurahByQueryUsecase>()));
    Get.lazyPut(
        () => GetAllSurahUsecase(surahRepository: Get.find<SurahRepository>()));
    Get.lazyPut(() =>
        GetSurahByQueryUsecase(surahRepository: Get.find<SurahRepository>()));
  }
}
