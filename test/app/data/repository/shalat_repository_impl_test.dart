import 'dart:collection';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/shalat_time_response.dart';
import 'package:suji/app/data/datasources/shalat_local_data_source.dart';
import 'package:suji/app/data/datasources/shalat_remote_data_source.dart';
import 'package:suji/app/data/repository/shalat_repository_impl.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

extension MultipleExpectations<T> on PostExpectation<T> {
  void thenAnswerInOrder(List<T> bodies) {
    final answers = Queue.of(bodies);
    thenAnswer((_) => answers.removeFirst());
  }
}

void main() {
  late ShalatLocalDataSource mockShalatLocalDataSource;
  late ShalatRemoteDataSource mockShalatRemoteDataSource;
  late Connectivity mockConnectivity;
  late ShalatRepository shalatRepository;

  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
    mockShalatLocalDataSource = MockShalatLocalDataSource();
    mockShalatRemoteDataSource = MockShalatRemoteDataSource();
    mockConnectivity = MockConnectivity();
    shalatRepository = ShalatRepositoryImpl(
        shalatRemoteDataSource: mockShalatRemoteDataSource,
        shalatLocalDataSource: mockShalatLocalDataSource,
        connectivity: mockConnectivity);
  });

  group('Get Shalat Time', () {
    const tPosition = Position(
        longitude: 0,
        latitude: 0,
        timestamp: null,
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0);
    final tDateTime = DateTime.now();
    final tShalatTimeResponse =
        ShalatTimeResponse.fromJson(json.decode(readJson('shalah_time.json')));
    final Shalat tShalatEntities = tShalatTimeResponse.toEntity().first;

    test('should get data shalat when call to local data source is successfull',
        () async {
      // arrange
      when(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .thenAnswer((_) async => tShalatEntities);

      // act
      final result = await shalatRepository.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition));

      final actual = result.getOrElse(() => Shalat());
      expect(actual, tShalatEntities);
    });

    test(
        'should return DatabaseFailure when call to local data source is unsuccessfull',
        () async {
      // arrange
      when(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .thenThrow(DatabaseException(AppString.databaseError));

      // act
      final result = await shalatRepository.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition));
      expect(
          result, equals(const Left(DatabaseFailure(AppString.databaseError))));
    });

    test(
        'should get data shalat when call to remote data source is successfull',
        () async {
      // arrange
      when(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .thenAnswerInOrder([Future(() => null), Future(() => tShalatEntities)]);
      when(mockShalatRemoteDataSource.getShalatTime(tDateTime, tPosition))
          .thenAnswer((_) async => tShalatTimeResponse);
      when(mockShalatLocalDataSource
              .insertOrUpdateShalat(tShalatTimeResponse.toEntity()))
          .thenAnswer((_) async => '');

      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);

      // act
      final result = await shalatRepository.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockShalatLocalDataSource
          .insertOrUpdateShalat(tShalatTimeResponse.toEntity()));
      verify(mockConnectivity.checkConnectivity());
      verify(mockShalatRemoteDataSource.getShalatTime(tDateTime, tPosition));
      verify(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .called(2);

      final actual = result.getOrElse(() => Shalat());
      expect(actual, tShalatEntities);
    });

    test(
        'should return ServerFailure when call to remota data source is unsuccessfull',
        () async {
      // arrange
      when(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .thenAnswer((_) async => null);
      when(mockShalatRemoteDataSource.getShalatTime(tDateTime, tPosition))
          .thenThrow(ServerException(AppString.socketException));

      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.wifi);

      // act
      final result = await shalatRepository.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockConnectivity.checkConnectivity());
      verify(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .called(1);
      verify(mockShalatRemoteDataSource.getShalatTime(tDateTime, tPosition))
          .called(1);

      expect(
          result, equals(const Left(ServerFailure(AppString.socketException))));
    });

    test(
        'should return ConnectionFailure when device not connected to internet',
        () async {
      // arrange
      when(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .thenAnswer((_) async => null);

      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => ConnectivityResult.none);

      // act
      final result = await shalatRepository.getShalatTime(tDateTime, tPosition);

      // assert
      verify(mockConnectivity.checkConnectivity());
      verify(mockShalatLocalDataSource.getShalatTime(tDateTime, tPosition))
          .called(1);

      expect(result,
          equals(const Left(ConnectionFailure(AppString.socketException))));
    });
  });
}
