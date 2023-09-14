import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/asmaul_husna_response.dart';
import 'package:suji/app/data/model/daily_pray_response.dart';
import 'package:suji/app/data/model/list_surah_response.dart';
import 'package:suji/app/data/datasources/surah_local_data_source.dart';
import 'package:suji/app/data/datasources/surah_remote_data_source.dart';
import 'package:suji/app/data/model/surah_detail_response.dart';
import 'package:suji/app/data/repository/surah_repository_impl.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main() {
  late SurahRemoteDataSource mockSurahRemoteDataSource;
  late SurahLocalDataSource mockSurahLocalDataSource;
  late Connectivity mockConnectivity;
  late SurahRepository surahRepository;
  final ListSurah tSurahResponse =
      ListSurah.fromJson(json.decode(readJson('list_surah_response.json')));
  final tSurahEntities = tSurahResponse.toEntity();

  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
    mockConnectivity = MockConnectivity();
    mockSurahLocalDataSource = MockSurahLocalDataSource();
    mockSurahRemoteDataSource = MockSurahRemoteDataSource();
    surahRepository = SurahRepositoryImpl(
        connectivity: mockConnectivity,
        surahRemoteDataSource: mockSurahRemoteDataSource,
        surahLocalDataSource: mockSurahLocalDataSource);
  });

  group('Get Daily Pray', () {
    final tDailyPray = DataDailyPrayResponse.fromJson(
        json.decode(readJson('daily_pray.json')));
    final tDailyPrayEntities = tDailyPray.toEntity();

    test('Should return List<AsmaulHusna> when call from local is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getDailyPray())
          .thenAnswer((_) async => tDailyPray);

      // act
      final result = await surahRepository.getDailyPray();

      // assert
      verify(mockSurahLocalDataSource.getDailyPray());

      final actual = result.getOrElse(() => []);
      expect(actual, tDailyPrayEntities);
    });

    test('Should return DatabaseFailure when call from local is unsuccessfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getDailyPray())
          .thenThrow(DatabaseException(AppString.databaseError));

      // act
      final result = await surahRepository.getDailyPray();

      // assert
      verify(mockSurahLocalDataSource.getDailyPray());

      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });
  });

  group('Get Asmaul Husna', () {
    final tAsmaulHusnaResponse = AsmaulHusnaResponse.fromJson(
        json.decode(readJson('asmaul_husna.json')));
    final tAsmaulHusnaEntities = tAsmaulHusnaResponse.toEntity();

    test('Should return List<AsmaulHusna> when call from local is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAsmaulHusna())
          .thenAnswer((_) async => tAsmaulHusnaResponse);

      // act
      final result = await surahRepository.getAsmaulHusna();

      // assert
      verify(mockSurahLocalDataSource.getAsmaulHusna());

      final actual = result.getOrElse(() => []);
      expect(actual, tAsmaulHusnaEntities);
    });

    test('Should return DatabaseFailure when call from local is unsuccessfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAsmaulHusna())
          .thenThrow(DatabaseException(AppString.databaseError));

      // act
      final result = await surahRepository.getAsmaulHusna();

      // assert
      verify(mockSurahLocalDataSource.getAsmaulHusna());

      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });
  });

  group('Get Surah by Query', () {
    final query = tSurahEntities.first.nameTransliterationId;
    test(
        'Should return data surah if query matches when call from local is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getSurahByQuery(query))
          .thenAnswer((_) async => tSurahEntities);
      // act
      final result = await surahRepository.getSurahByQuery(query);

      // assert
      verify(mockSurahLocalDataSource.getSurahByQuery(query));

      expect(result, equals(right(tSurahEntities)));
    });

    test('Should return DatabaseFailure when call from local is unsuccessfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getSurahByQuery(query))
          .thenThrow(DatabaseException(AppString.databaseError));

      // act
      final result = await surahRepository.getSurahByQuery(query);

      // assert
      verify(mockSurahLocalDataSource.getSurahByQuery(query));

      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });
  });

  group('Get Ayah by SurahNumber', () {
    final SurahDetailResponse tSurahDetailResponse =
        SurahDetailResponse.fromJson(
            json.decode(readJson('surah_detail_response.json')));
    final tSurahDetailEntities = tSurahDetailResponse.toEntity();
    final surahNumber = tSurahDetailEntities.first.number;
    test('Should return data ayah when call from local is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber))
          .thenAnswer((_) async => tSurahDetailEntities);
      // act
      final result = await surahRepository.getAyahBySurahNumber(surahNumber);

      // assert
      verify(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber));

      final actual = result.getOrElse(() => []);
      expect(actual, tSurahDetailEntities);
    });

    test('Should return [DatabaseFailure] when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber))
          .thenThrow(DatabaseException(AppString.databaseError));
      // act
      final result = await surahRepository.getAyahBySurahNumber(surahNumber);

      // assert
      verify(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber));

      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });

    test('Should return data ayah when call from remote is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber))
          .thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);
      when(mockSurahRemoteDataSource.getAyahBySurahNumber(surahNumber))
          .thenAnswer((_) async => tSurahDetailResponse);
      when(mockSurahLocalDataSource.insertOrUpdateAyah(tSurahDetailEntities))
          .thenAnswer((_) async => '');

      // act
      final result = await surahRepository.getAyahBySurahNumber(surahNumber);

      // assert
      verify(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber));
      verify(mockConnectivity.checkConnectivity());
      verify(mockSurahRemoteDataSource.getAyahBySurahNumber(surahNumber));
      verify(mockSurahLocalDataSource.insertOrUpdateAyah(tSurahDetailEntities));

      final actual = result.getOrElse(() => []);
      expect(actual, tSurahDetailEntities);
    });

    test('should return [ServerFailure] when call from remote is unsuccessfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber))
          .thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);
      when(mockSurahRemoteDataSource.getAyahBySurahNumber(surahNumber))
          .thenThrow(ServerException(AppString.socketException));

      // act
      final result = await surahRepository.getAyahBySurahNumber(surahNumber);

      // assert
      verify(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber));
      verify(mockConnectivity.checkConnectivity());
      verify(mockSurahRemoteDataSource.getAyahBySurahNumber(surahNumber));
      expect(
          result, equals(const Left(ServerFailure(AppString.socketException))));
    });

    test(
        'should return [ConnectionFailure] when cache is empty and device is not connected',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber))
          .thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.none);

      // act
      final result = await surahRepository.getAyahBySurahNumber(surahNumber);

      // assert
      verify(mockSurahLocalDataSource.getAyahBySurahNumber(surahNumber));
      verify(mockConnectivity.checkConnectivity());

      expect(result,
          equals(const Left(ConnectionFailure(AppString.socketException))));
    });
  });
  group('Get Data Surah', () {
    test('Should return data surah when call from local is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAllSurah())
          .thenAnswer((_) async => tSurahEntities);
      // act
      final result = await surahRepository.getAllSurah();

      // assert
      verify(mockSurahLocalDataSource.getAllSurah());

      final actual = result.getOrElse(() => []);
      expect(actual, tSurahEntities);
    });

    test('Should return DatabaseFailure when call from local is unsuccessful',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAllSurah())
          .thenThrow(DatabaseException(AppString.databaseError));
      // act
      final result = await surahRepository.getAllSurah();

      // assert
      verify(mockSurahLocalDataSource.getAllSurah());

      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });

    test('Should return data surah when call from remote is successfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAllSurah()).thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);
      when(mockSurahRemoteDataSource.getAllSurah())
          .thenAnswer((_) async => tSurahResponse);
      when(mockSurahLocalDataSource.insertOrUpdateSurah(tSurahEntities))
          .thenAnswer((_) async => '');

      // act
      final result = await surahRepository.getAllSurah();

      // assert
      verify(mockSurahLocalDataSource.getAllSurah());
      verify(mockConnectivity.checkConnectivity());
      verify(mockSurahRemoteDataSource.getAllSurah());
      verify(mockSurahLocalDataSource.insertOrUpdateSurah(tSurahEntities));

      final actual = result.getOrElse(() => []);
      expect(actual, tSurahEntities);
    });

    test('Should return ServerFailure when call from remote is unsuccessfull',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAllSurah()).thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);
      when(mockSurahRemoteDataSource.getAllSurah())
          .thenThrow(ServerException(AppString.socketException));

      // act
      final result = await surahRepository.getAllSurah();

      // assert
      verify(mockSurahLocalDataSource.getAllSurah());
      verify(mockConnectivity.checkConnectivity());
      verify(mockSurahRemoteDataSource.getAllSurah());
      expect(
          result, equals(const Left(ServerFailure(AppString.socketException))));
    });

    test(
        'Should return ConnectionFailure when cache is empty and device is not connected',
        () async {
      // arrange
      when(mockSurahLocalDataSource.getAllSurah()).thenAnswer((_) async => []);
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.none);

      // act
      final result = await surahRepository.getAllSurah();

      // assert
      verify(mockSurahLocalDataSource.getAllSurah());
      verify(mockConnectivity.checkConnectivity());

      expect(result,
          equals(const Left(ConnectionFailure(AppString.socketException))));
    });
  });
}
