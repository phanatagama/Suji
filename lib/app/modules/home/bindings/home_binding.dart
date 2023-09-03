import 'package:get/get.dart';
import 'package:suji/app/data/providers/database_helper.dart';
import 'package:suji/app/data/providers/surah_local_data_source.dart';
import 'package:suji/app/data/providers/surah_remote_data_source.dart';
import 'package:suji/app/data/repository/surah_repository_impl.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<SurahRepository>(() => SurahRepositoryImpl());
    Get.lazyPut<SurahRemoteDataSource>(() => SurahRemoteDataSourceImpl());
    Get.lazyPut<SurahLocalDataSource>(() => SurahLocalDataSourceImpl());
    Get.lazyPut<DatabaseHelper>(() => DatabaseHelper());
  }
}
