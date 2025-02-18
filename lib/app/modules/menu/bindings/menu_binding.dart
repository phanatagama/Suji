import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/data/datasources/surah_local_data_source.dart';
import 'package:suji/app/data/datasources/surah_remote_data_source.dart';
import 'package:suji/app/data/repository/surah_repository_impl.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_daily_pray_usecase.dart';
import 'package:suji/app/modules/menu/controllers/menu_controller.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(
      () => MenuController(
          getDailyPrayUsecase: Get.find<GetDailyPrayUsecase>(),
          locationService: Get.find<LocationService>()),
    );
    Get.lazyPut(() =>
        GetDailyPrayUsecase(surahRepository: Get.find<SurahRepository>()));
    Get.lazyPut<SurahRepository>(() => SurahRepositoryImpl(
        connectivity: Get.find<Connectivity>(),
        surahRemoteDataSource: Get.find<SurahRemoteDataSource>(),
        surahLocalDataSource: Get.find<SurahLocalDataSource>()));
    Get.lazyPut<Connectivity>(() => Connectivity(), fenix: true);
    Get.lazyPut<SurahRemoteDataSource>(() => SurahRemoteDataSourceImpl());
    Get.lazyPut<SurahLocalDataSource>(() =>
        SurahLocalDataSourceImpl(databaseHelper: Get.find<DatabaseHelper>()));
    Get.lazyPut<DatabaseHelper>(() => DatabaseHelper(), fenix: true);
    Get.lazyPut<LocationService>(() => LocationService());
  }
}
