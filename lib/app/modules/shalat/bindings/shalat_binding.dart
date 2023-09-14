import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/data/datasources/shalat_local_data_source.dart';
import 'package:suji/app/data/datasources/shalat_remote_data_source.dart';
import 'package:suji/app/data/repository/shalat_repository_impl.dart';
import 'package:suji/app/data/services/location_service.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/app/domain/usescases/get_shalat_time_usecase.dart';
import 'package:suji/app/modules/shalat/controllers/notification_controller.dart';
import 'package:suji/app/modules/shalat/controllers/shalat_controller.dart';

class ShalatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController());
    Get.lazyPut<ShalatController>(() => ShalatController(
        locationService: Get.find<LocationService>(),
        getShalatTimeUsecase: Get.find<GetShalatTimeUsecase>()));
    Get.lazyPut(() =>
        GetShalatTimeUsecase(shalatRepository: Get.find<ShalatRepository>()));
    Get.lazyPut<ShalatRepository>(() => ShalatRepositoryImpl(
        connectivity: Get.find<Connectivity>(),
        shalatLocalDataSource: Get.find<ShalatLocalDataSource>(),
        shalatRemoteDataSource: Get.find<ShalatRemoteDataSource>()));
    Get.lazyPut<Connectivity>(() => Connectivity(), fenix: true);
    Get.lazyPut<ShalatLocalDataSource>(
        () => ShalatLocalDataSourceImpl(
            databaseHelper: Get.find<DatabaseHelper>()),
        fenix: true);
    Get.lazyPut<ShalatRemoteDataSource>(() => ShalatRemoteDataSourceImpl());
  }
}
