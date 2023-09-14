import 'package:get/get.dart';
import 'package:suji/app/modules/tasbih/controllers/tasbih_controller.dart';

class TasbihBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TasbihController>(() => TasbihController());
  }
}
