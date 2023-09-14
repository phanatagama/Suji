import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/daily_pray_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_daily_pray_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late SurahRepository mockSurahRepository;
  late GetDailyPrayUsecase getDailyPrayUsecase;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    getDailyPrayUsecase =
        GetDailyPrayUsecase(surahRepository: mockSurahRepository);
  });

  group('Get Daily Pray Test', () {
    final tDailyPray = DataDailyPrayResponse.fromJson(
        json.decode(readJson('daily_pray.json')));
    final tDailyPrayEntities = tDailyPray.toEntity();
    test('Should return all daily pray when call is successful', () async {
      // arrange
      when(mockSurahRepository.getDailyPray())
          .thenAnswer((_) async => right(tDailyPrayEntities));

      //act
      final result = await getDailyPrayUsecase.invoke();

      // assert
      verify(mockSurahRepository.getDailyPray());

      expect(result, equals(right(tDailyPrayEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahRepository.getDailyPray()).thenAnswer(
          (_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getDailyPrayUsecase.invoke();

      // assert
      verify(mockSurahRepository.getDailyPray());

      expect(
          result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
  });
}
