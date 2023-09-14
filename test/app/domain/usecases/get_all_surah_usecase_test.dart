import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/list_surah_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_all_surah_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late SurahRepository mockSurahRepository;
  late GetAllSurahUsecase getAllSurahUsecase;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    getAllSurahUsecase =
        GetAllSurahUsecase(surahRepository: mockSurahRepository);
  });

  group('Get All Surah Test', () {
    final ListSurah tSurahResponse =
        ListSurah.fromJson(json.decode(readJson('list_surah_response.json')));
    final tSurahEntities = tSurahResponse.toEntity();
    test('Should return all surah when call is successful', () async {
      // arrange
      when(mockSurahRepository.getAllSurah())
          .thenAnswer((_) async => right(tSurahEntities));

      //act
      final result = await getAllSurahUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAllSurah());

      expect(result, equals(right(tSurahEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahRepository.getAllSurah()).thenAnswer(
          (_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getAllSurahUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAllSurah());

      expect(
          result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
    test('Should return [ServerFailure] when call from remote is unsuccessful',
        () async {
      // arrange
      when(mockSurahRepository.getAllSurah()).thenAnswer(
          (_) async => left(const ServerFailure(AppString.socketException)));

      //act
      final result = await getAllSurahUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAllSurah());

      expect(
          result, equals(left(const ServerFailure(AppString.socketException))));
    });
    test(
        'Should return [ConnectionFailure] when device not connected to internet',
        () async {
      // arrange
      when(mockSurahRepository.getAllSurah()).thenAnswer((_) async =>
          left(const ConnectionFailure(AppString.socketException)));

      //act
      final result = await getAllSurahUsecase.invoke();

      // assert
      verify(mockSurahRepository.getAllSurah());

      expect(result,
          equals(left(const ConnectionFailure(AppString.socketException))));
    });
  });
}
