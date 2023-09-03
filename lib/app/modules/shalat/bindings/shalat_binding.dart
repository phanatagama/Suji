import 'package:get/get.dart';
import 'package:suji/app/data/repository/shalat_repository_impl.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/app/modules/shalat/controllers/notification_controller.dart';
import 'package:suji/app/modules/shalat/controllers/shalat_controller.dart';

class ShalatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShalatController>(() => ShalatController());
    Get.lazyPut<ShalatRepository>(() => ShalatRepositoryImpl());
    Get.lazyPut<NotificationController>(() => NotificationController());
  }
}
