import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/shalat_time_response.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/data/datasources/shalat_local_data_source.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/core/extensions/string_extension.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late DatabaseHelper mockDatabaseHelper;
  late ShalatLocalDataSource shalatLocalDataSource;

  final tShalatTimeResponse =
      ShalatTimeResponse.fromJson(json.decode(readJson('shalah_time.json')));
  final Shalat tShalat = tShalatTimeResponse.toEntity().first;
  final tDateTime = DateTime.now();

  setUpAll(() {
    mockDatabaseHelper = MockDatabaseHelper();
    shalatLocalDataSource =
        ShalatLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  group('Get Data Shalat by DateTime', () {
    String tDateString = DateFormat('dd MMM y').format(tDateTime);
    test('Should return data Shalat when call is successfull', () async {
      // arrange
      when(mockDatabaseHelper.getShalatTimeByDate(tDateString))
          .thenAnswer((_) async => tShalat);

      // act
      final result = await shalatLocalDataSource.getShalatTimeByDate(tDateTime);

      // assert
      verify(mockDatabaseHelper.getShalatTimeByDate(tDateString));

      expect(result, tShalat);
    });

    test(
        'Should return null if the obj does not exist in [DatabaseHelper] when call is successfull',
        () async {
      // arrange
      when(mockDatabaseHelper.getShalatTimeByDate(tDateString))
          .thenAnswer((_) async => null);

      // act
      final result = await shalatLocalDataSource.getShalatTimeByDate(tDateTime);

      // assert
      verify(mockDatabaseHelper.getShalatTimeByDate(tDateString));

      expect(result, null);
    });

    test('Should throw [DatabaseException] when call is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper.getShalatTimeByDate(tDateString))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await shalatLocalDataSource.getShalatTimeByDate(tDateTime);
      } on DatabaseException catch (e) {
        // assert
        verify(mockDatabaseHelper.getShalatTimeByDate(tDateString));

        expect(e, isA<DatabaseException>());
      }
    });
  });

  group('Get Data Shalat by id', () {
    const tPosition = Position(
        longitude: 0,
        latitude: 0,
        timestamp: null,
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0);

    final int tId =
        '${DateFormat("dd MMM y").format(tDateTime)}${tPosition.latitude}${tPosition.longitude}'
            .fastHash();

    test('Should return data Shalat when call is successfull', () async {
      // arrange
      when(mockDatabaseHelper.getShalatTime(tId))
          .thenAnswer((_) async => tShalat);

      // act
      final result =
          await shalatLocalDataSource.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockDatabaseHelper.getShalatTime(tId));

      expect(result, tShalat);
    });

    test('Should return null if obj does not exist when call is successfull',
        () async {
      // arrange
      when(mockDatabaseHelper.getShalatTime(tId)).thenAnswer((_) async => null);

      // act
      final result =
          await shalatLocalDataSource.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockDatabaseHelper.getShalatTime(tId));

      expect(result, null);
    });

    test('Should throw [DatabaseException] when call is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper.getShalatTime(tId))
          .thenThrow(DatabaseException(AppString.databaseError));
      try {
        // act
        await shalatLocalDataSource.getShalatTime(tDateTime, tPosition);
      } catch (e) {
        // assert
        verify(mockDatabaseHelper.getShalatTime(tId));

        expect(e, isA<DatabaseException>());
      }
    });
  });

  group('Insert Shalat', () {
    test('Should return String when insert is successfull', () async {
      // arrange
      when(mockDatabaseHelper
              .insertOrUpdateShalat(tShalatTimeResponse.toEntity()))
          .thenAnswer((_) async => AppString.insertOrUpdateSuccess);

      //act
      final result = await shalatLocalDataSource
          .insertOrUpdateShalat(tShalatTimeResponse.toEntity());

      // assert
      verify(mockDatabaseHelper
          .insertOrUpdateShalat(tShalatTimeResponse.toEntity()));

      expect(result, AppString.insertOrUpdateSuccess);
    });

    test('Should throw [DatabaseException] when insert is unsuccessfull',
        () async {
      // arrange
      when(mockDatabaseHelper
              .insertOrUpdateShalat(tShalatTimeResponse.toEntity()))
          .thenThrow(DatabaseException(AppString.databaseError));

      try {
        //act
        await shalatLocalDataSource
            .insertOrUpdateShalat(tShalatTimeResponse.toEntity());
      } catch (e) {
        // assert
        verify(mockDatabaseHelper
            .insertOrUpdateShalat(tShalatTimeResponse.toEntity()));

        expect(e, isA<DatabaseException>());
      }
    });
  });
}
