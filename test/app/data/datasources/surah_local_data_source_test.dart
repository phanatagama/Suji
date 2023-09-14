import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/list_surah_response.dart';
import 'package:suji/app/data/model/surah_detail_response.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/data/datasources/surah_local_data_source.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late DatabaseHelper mockDatabaseHelper;
  late SurahLocalDataSource surahLocalDataSource;

  setUpAll(() {
    mockDatabaseHelper = MockDatabaseHelper();
    surahLocalDataSource =
        SurahLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  final ListSurah tSurahResponse =
      ListSurah.fromJson(json.decode(readJson('list_surah_response.json')));
  final List<Surah> tSurahEntities = tSurahResponse.toEntity();

  final tSurahDetailResponse = SurahDetailResponse.fromJson(
      json.decode(readJson('surah_detail_response.json')));
  final tSurahDetailEntities = tSurahDetailResponse.toEntity();
  group('Get Surah', () {
    test('Should return List<Surah> when call is successful', () async {
      // arrange
      when(mockDatabaseHelper.getAllSurah())
          .thenAnswer((_) async => tSurahEntities);

      // act
      final result = await surahLocalDataSource.getAllSurah();

      // assert
      verify(mockDatabaseHelper.getAllSurah());

      expect(result, tSurahEntities);
    });
    test('Should return list empty[] if no obj matches when call is successful',
        () async {
      // arrange
      when(mockDatabaseHelper.getAllSurah()).thenAnswer((_) async => []);

      // act
      final result = await surahLocalDataSource.getAllSurah();

      // assert
      verify(mockDatabaseHelper.getAllSurah());

      expect(result, isEmpty);
    });
    test('Should throw [DatabaseException] when call is unsuccessful',
        () async {
      // arrange
      when(mockDatabaseHelper.getAllSurah())
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await surahLocalDataSource.getAllSurah();
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper.getAllSurah());

        expect(e, isA<DatabaseException>());
      }
    });
  });

  group('Get Data Surah by Query', () {
    test('Should return List<Surah> that matches query when call is succesfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .getSurahByQuery(tSurahEntities.first.nameTransliterationId))
          .thenAnswer((_) async => [tSurahEntities.first]);

      // act
      final result = await surahLocalDataSource
          .getSurahByQuery(tSurahEntities.first.nameTransliterationId);

      // assert
      verify(mockDatabaseHelper
          .getSurahByQuery(tSurahEntities.first.nameTransliterationId));

      expect(result, [tSurahEntities.first]);
    });
    test(
        'Should return list Empty[] if no obj matches query when call is succesfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .getSurahByQuery(tSurahEntities.first.nameTransliterationId))
          .thenAnswer((_) async => []);

      // act
      final result = await surahLocalDataSource
          .getSurahByQuery(tSurahEntities.first.nameTransliterationId);

      // assert
      verify(mockDatabaseHelper
          .getSurahByQuery(tSurahEntities.first.nameTransliterationId));

      expect(result, isEmpty);
    });
    test('Should throw [DatabaseException] when call is unsuccesfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .getSurahByQuery(tSurahEntities.first.nameTransliterationId))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await surahLocalDataSource
            .getSurahByQuery(tSurahEntities.first.nameTransliterationId);
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper
            .getSurahByQuery(tSurahEntities.first.nameTransliterationId));

        expect(e, isA<DatabaseException>());
      }
    });
  });

  group('Get Data Ayah by SurahNumber (SurahDetail)', () {
    test('Should return List<SurahDetail> when call is successfull', () async {
      // arrange
      when(mockDatabaseHelper
              .getAyahBySurahNumber(tSurahDetailEntities.first.number))
          .thenAnswer((_) async => tSurahDetailEntities);

      // act
      final result = await surahLocalDataSource
          .getAyahBySurahNumber(tSurahDetailEntities.first.number);

      // assert
      verify(mockDatabaseHelper
          .getAyahBySurahNumber(tSurahDetailEntities.first.number));

      expect(result, tSurahDetailEntities);
    });

    test(
        'Should return list Empty[] if no obj matches when call is successfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .getAyahBySurahNumber(tSurahDetailEntities.first.number))
          .thenAnswer((_) async => []);

      // act
      final result = await surahLocalDataSource
          .getAyahBySurahNumber(tSurahDetailEntities.first.number);

      // assert
      verify(mockDatabaseHelper
          .getAyahBySurahNumber(tSurahDetailEntities.first.number));

      expect(result, isEmpty);
    });

    test('Should throw [DatabaseException] when call is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .getAyahBySurahNumber(tSurahDetailEntities.first.number))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await surahLocalDataSource
            .getAyahBySurahNumber(tSurahDetailEntities.first.number);
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper
            .getAyahBySurahNumber(tSurahDetailEntities.first.number));

        expect(e, isA<DatabaseException>());
      }
    });
  });

  group('Insert Surah', () {
    test('Should return String when insert is successfull', () async {
      // arrange
      when(mockDatabaseHelper.insertOrUpdateSurah(tSurahEntities))
          .thenAnswer((_) async => AppString.insertOrUpdateSuccess);

      // act
      final result =
          await surahLocalDataSource.insertOrUpdateSurah(tSurahEntities);

      // assert
      verify(mockDatabaseHelper.insertOrUpdateSurah(tSurahEntities));

      expect(result, AppString.insertOrUpdateSuccess);
    });
    test('Should throw [DatabaseException] when insert is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper.insertOrUpdateSurah(tSurahEntities))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await surahLocalDataSource.insertOrUpdateSurah(tSurahEntities);
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper.insertOrUpdateSurah(tSurahEntities));

        expect(e, isA<DatabaseException>());
      }
    });
  });
  group('Insert Ayah', () {
    test('Should return String when insert is successfull', () async {
      // arrange
      when(mockDatabaseHelper.insertOrUpdateAyah(tSurahDetailEntities))
          .thenAnswer((_) async => AppString.insertOrUpdateSuccess);

      // act
      final result =
          await surahLocalDataSource.insertOrUpdateAyah(tSurahDetailEntities);

      // assert
      verify(mockDatabaseHelper.insertOrUpdateAyah(tSurahDetailEntities));

      expect(result, AppString.insertOrUpdateSuccess);
    });
    test('Should throw [DatabaseException] when insert is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper.insertOrUpdateAyah(tSurahDetailEntities))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act

        await surahLocalDataSource.insertOrUpdateAyah(tSurahDetailEntities);
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper.insertOrUpdateAyah(tSurahDetailEntities));

        expect(e, isA<DatabaseException>());
      }
    });
  });
}
