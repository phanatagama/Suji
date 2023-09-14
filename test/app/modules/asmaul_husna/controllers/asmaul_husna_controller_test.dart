import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/asmaul_husna_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
import 'package:suji/app/modules/asmaul_husna/controllers/asmaul_husna_controller.dart';

import '../../../../helper/test_helper.mocks.dart';
import '../../../../json_reader.dart';

void main() {
  late GetAsmaulHusnaUsecase mockGetAsmaulHusnaUsecase;
  late AsmaulHusnaController asmaulHusnaController;
  final tAsmaulHusnaResponse =
      AsmaulHusnaResponse.fromJson(json.decode(readJson('asmaul_husna.json')));
  final tAsmaulHusnaEntities = tAsmaulHusnaResponse.toEntity();
  setUpAll(() {
    mockGetAsmaulHusnaUsecase = MockGetAsmaulHusnaUsecase();
    asmaulHusnaController =
        AsmaulHusnaController(getAsmaulHusnaUsecase: mockGetAsmaulHusnaUsecase);
  });

  test('initialize Asmaul Husna Controller', () async {
    // arrange
    when(mockGetAsmaulHusnaUsecase.invoke())
        .thenAnswer((_) async => Right(tAsmaulHusnaEntities));

    // act
    Get.put<AsmaulHusnaController>(asmaulHusnaController);

    // verify
    verify(mockGetAsmaulHusnaUsecase.invoke());

    expect(asmaulHusnaController.status.isLoading, true);
    Get.delete<AsmaulHusnaController>();
  });
}
