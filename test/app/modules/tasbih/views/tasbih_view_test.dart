import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/modules/tasbih/controllers/tasbih_controller.dart';
import 'package:suji/app/modules/tasbih/views/tasbih_view.dart';

class TasbihControllerMock extends GetxController
    with Mock
    implements TasbihController {
  @override
  TextEditingController get textEditingController => TextEditingController();
}

void main() {
  late TasbihController tasbihController;
  const tasbihView = GetMaterialApp(
    home: TasbihView(),
  );

  setUp(() {
    tasbihController = Get.put<TasbihController>(TasbihController());
  });
  tearDown(() {
    Get.delete<TasbihController>();
  });
  testWidgets('initial state of TasbihView', (widgetTester) async {
    await widgetTester.pumpWidget(tasbihView);
    final counter = find.text('0');
    expect(counter, findsOneWidget);
  });
  testWidgets('Should increase counter', (widgetTester) async {
    // act
    await widgetTester.pumpWidget(tasbihView);
    final counterButton = find.byKey(const Key('IncreaseButton'));
    await widgetTester.tap(counterButton);
    await widgetTester.pump();
    final counter = find.text('1');

    // assert
    expect(counterButton, findsOneWidget);
    expect(counter, findsOneWidget);
  });

  testWidgets('Should decrease counter', (widgetTester) async {
    // act
    await widgetTester.pumpWidget(tasbihView);
    final counterButton = find.byKey(const Key('DecreaseButton'));
    await widgetTester.tap(counterButton);
    await widgetTester.pump();
    final counter = find.text('0');

    // assert
    expect(counterButton, findsOneWidget);
    expect(counter, findsOneWidget);
  });

  testWidgets('Should reset counter', (widgetTester) async {
    // act
    await widgetTester.pumpWidget(tasbihView);
    final counterButton = find.byKey(const Key('ResetButton'));
    await widgetTester.tap(counterButton);
    await widgetTester.pump();
    final counter = find.text('0');

    // assert
    expect(counterButton, findsOneWidget);
    expect(counter, findsOneWidget);
  });
  testWidgets('Should change target by selected button', (widgetTester) async {
    // act
    await widgetTester.pumpWidget(tasbihView);
    final targetButton = find.byKey(const Key('TargetButton99'));
    await widgetTester.tap(targetButton);
    await widgetTester.pump();
    final target = find.text('99');

    // assert
    expect(targetButton, findsOneWidget);
    expect(target, findsNWidgets(2));
    expect(tasbihController.target, 99);
    expect(tasbihController.textEditingController.text, '99');
  });
}
