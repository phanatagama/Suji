import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/list_surah_response.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_surah_by_query_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late SurahRepository mockSurahRepository;
  late GetSurahByQueryUsecase getSurahByQueryUsecase;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    getSurahByQueryUsecase =
        GetSurahByQueryUsecase(surahRepository: mockSurahRepository);
  });

  group('Get Surah by Query Test', () {
    final ListSurah tSurahResponse =
        ListSurah.fromJson(json.decode(readJson('list_surah_response.json')));
    final tSurahEntities = tSurahResponse.toEntity();
    final query = tSurahEntities.first.nameTransliterationId;
    test('Should return all surah which matches query when call is successful',
        () async {
      // arrange
      when(mockSurahRepository.getSurahByQuery(query))
          .thenAnswer((_) async => right(tSurahEntities));

      //act
      final result = await getSurahByQueryUsecase.invoke(query);

      // assert
      verify(mockSurahRepository.getSurahByQuery(query));

      expect(result, equals(right(tSurahEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahRepository.getSurahByQuery(query)).thenAnswer(
          (_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getSurahByQueryUsecase.invoke(query);

      // assert
      verify(mockSurahRepository.getSurahByQuery(query));

      expect(
          result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
  });
}
