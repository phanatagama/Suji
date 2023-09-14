import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/surah_detail_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_ayah_by_surah_number_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main(){
  late SurahRepository mockSurahRepository;
  late GetAyahBySurahNumberUsecase getAyahBySurahNumberUsecase;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    getAyahBySurahNumberUsecase = GetAyahBySurahNumberUsecase(surahRepository: mockSurahRepository);
  });

  group('Get Ayah by SurahNumber Test', () {
    final SurahDetailResponse tSurahDetailResponse =
        SurahDetailResponse.fromJson(json.decode(readJson('surah_detail_response.json')));
    final tSurahDetailEntities = tSurahDetailResponse.toEntity();
    final surahNumber = tSurahDetailEntities.first.number;
    test('Should return all ayah when call is successful', () async{
      // arrange
      when(mockSurahRepository.getAyahBySurahNumber(surahNumber)).thenAnswer((_) async => right(tSurahDetailEntities));

      //act
      final result = await getAyahBySurahNumberUsecase.invoke(surahNumber);

      // assert
      verify(mockSurahRepository.getAyahBySurahNumber(surahNumber));

      expect(result, equals(right(tSurahDetailEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful', () async{
      // arrange
      when(mockSurahRepository.getAyahBySurahNumber(surahNumber)).thenAnswer((_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getAyahBySurahNumberUsecase.invoke(surahNumber);

      // assert
      verify(mockSurahRepository.getAyahBySurahNumber(surahNumber));

      expect(result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
    test('Should return [ServerFailure] when call from remote is unsuccessful', () async{
      // arrange
      when(mockSurahRepository.getAyahBySurahNumber(surahNumber)).thenAnswer((_) async => left(const ServerFailure(AppString.databaseError)));

      //act
      final result = await getAyahBySurahNumberUsecase.invoke(surahNumber);

      // assert
      verify(mockSurahRepository.getAyahBySurahNumber(surahNumber));

      expect(result, equals(left(const ServerFailure(AppString.databaseError))));
    });
    test('Should return [ConnectionFailure] when call from remote is unsuccessful', () async{
      // arrange
      when(mockSurahRepository.getAyahBySurahNumber(surahNumber)).thenAnswer((_) async => left(const ConnectionFailure(AppString.databaseError)));

      //act
      final result = await getAyahBySurahNumberUsecase.invoke(surahNumber);

      // assert
      verify(mockSurahRepository.getAyahBySurahNumber(surahNumber));

      expect(result, equals(left(const ConnectionFailure(AppString.databaseError))));
    });
   });
}