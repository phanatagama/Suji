import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:suji/app/modules/tasbih/controllers/tasbih_controller.dart';

void main() {
  late TasbihController tasbihController;

  setUp(() {
    tasbihController = TasbihController();
  });
  tearDown(() => Get.reset());
  group('Tasbih Controller', () {
    const int initialCounter = 0;
    const int initialTarget = 11;
    test('initial test Tasbih Controller', () {
      expect(tasbihController.counter, initialCounter);
      expect(tasbihController.target, initialTarget);
      expect(tasbihController.textEditingController.text, isEmpty);

      Get.put<TasbihController>(tasbihController);
      expect(tasbihController.textEditingController.text, isNotEmpty);

      Get.delete<TasbihController>();
    });
    test('Should increase counter when counter is lower than target', () {
      Get.put<TasbihController>(tasbihController);
      for (int i = 0; i <= initialTarget; i++) {
        expect(tasbihController.counter, i);
        tasbihController.counter++;
      }
      expect(tasbihController.counter, initialTarget);
      Get.delete<TasbihController>();
    });
    test(
        'Should return 0 if value of counter lower than zero when decrease counter tap',
        () {
      Get.put<TasbihController>(tasbihController);
      tasbihController.counter--;
      expect(tasbihController.counter, 0);
      Get.delete<TasbihController>();
    });

    test('Should change the value of target', () {
      Get.put<TasbihController>(tasbihController);
      tasbihController.target = 33;
      expect(tasbihController.target, 33);
      expect(tasbihController.textEditingController.text, '33');
      Get.delete<TasbihController>();
    });

    test(
        'Should change the value of target when call onChanged from [TextFormField]',
        () {
      Get.put<TasbihController>(tasbihController);
      tasbihController.onChangedTextField('');
      expect(tasbihController.target, 0);
      expect(tasbihController.textEditingController.text, '0');
      Get.delete<TasbihController>();
    });
  });
}
