// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:get/get.dart';
// import 'package:mockito/mockito.dart';
// import 'package:suji/app/data/model/asmaul_husna_response.dart';
// import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
// import 'package:suji/app/modules/asmaul_husna/controllers/asmaul_husna_controller.dart';
// import 'package:suji/app/modules/asmaul_husna/views/asmaul_husna_view.dart';

// import '../../../../helper/test_helper.mocks.dart';
// import '../../../../json_reader.dart';

// void main() {
//   // late AsmaulHusnaController asmaulHusnaController;
//   late GetAsmaulHusnaUsecase mockGetAsmaulHusnaUsecase;
//   final tAsmaulHusnaResponse = AsmaulHusnaResponse.fromJson(
//         json.decode(readJson('asmaul_husna.json')));
//     final tAsmaulHusnaEntities = tAsmaulHusnaResponse.toEntity();
//   const asmaulHusnaView = GetMaterialApp(
//     home: AsmaulHusnaView(),
//   );

//   setUp(() {
//     Get.testMode = true;
//     mockGetAsmaulHusnaUsecase = MockGetAsmaulHusnaUsecase();
//       Get.put<AsmaulHusnaController>(AsmaulHusnaController(getAsmaulHusnaUsecase: mockGetAsmaulHusnaUsecase));
//   });
//   tearDown(() {
//     // Get.delete<AsmaulHusnaController>();
//     Get.reset();
//   });

//   testWidgets('initial state of asmaulHusnaView', (widgetTester) async {
//     // arrange
//     when(mockGetAsmaulHusnaUsecase.invoke()).thenAnswer((_)async=> right(tAsmaulHusnaEntities));

//     await widgetTester.pumpWidget(asmaulHusnaView);
//     final asmaulHusnaText = find.text(tAsmaulHusnaEntities.first.latin);
//     expect(asmaulHusnaText, findsOneWidget);
//   });
// }
