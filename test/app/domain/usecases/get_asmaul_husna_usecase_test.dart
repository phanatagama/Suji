import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/asmaul_husna_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late SurahRepository mockSurahRepository;
  late GetAsmaulHusnaUsecase getAsmaulHusnaUsecase;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    getAsmaulHusnaUsecase =
        GetAsmaulHusnaUsecase(surahRepository: mockSurahRepository);
  });

  group('Get Asmaul Husna Test', () {
    final tAsmaulHusnaResponse = AsmaulHusnaResponse.fromJson(
        json.decode(readJson('asmaul_husna.json')));
    final tAsmaulHusnaEntities = tAsmaulHusnaResponse.toEntity();
    test('Should return all surah when call is successful', () async {
      // arrange
      when(mockSurahRepository.getAsmaulHusna())
          .thenAnswer((_) async => right(tAsmaulHusnaEntities));

      //act
      final result = await getAsmaulHusnaUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAsmaulHusna());

      expect(result, equals(right(tAsmaulHusnaEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahRepository.getAsmaulHusna()).thenAnswer(
          (_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getAsmaulHusnaUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAsmaulHusna());

      expect(
          result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
  });
}
