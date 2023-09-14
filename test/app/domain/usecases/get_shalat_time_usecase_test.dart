import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/mockito.dart';
import 'package:suji/app/data/model/shalat_time_response.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/app/domain/usescases/get_shalat_time_usecase.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

import '../../../helper/test_helper.mocks.dart';
import '../../../json_reader.dart';

void main(){
  late ShalatRepository mockShalatRepository;
  late GetShalatTimeUsecase getShalatTimeUsecase;

  setUp(() {
    mockShalatRepository = MockShalatRepository();
    getShalatTimeUsecase = GetShalatTimeUsecase(shalatRepository: mockShalatRepository);
  });

  group('Get Shalat Time Test', () {
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

    test('Should return data shalat when call is successful', () async{
      // arrange
      when(mockShalatRepository.getShalatTime(tDateTime,tPosition)).thenAnswer((_) async => right(tShalatEntities));

      //act
      final result = await getShalatTimeUsecase.invoke(tDateTime,tPosition);

      // assert
      verify(mockShalatRepository.getShalatTime(tDateTime,tPosition));

      expect(result, equals(right(tShalatEntities)));
    });
    test('Should return [DatabaseFailure] when call from local is unsuccessful', () async{
      // arrange
      when(mockShalatRepository.getShalatTime(tDateTime,tPosition)).thenAnswer((_) async => left(const DatabaseFailure(AppString.databaseError)));

      //act
      final result = await getShalatTimeUsecase.invoke(tDateTime,tPosition);

      // assert
      verify(mockShalatRepository.getShalatTime(tDateTime,tPosition));

      expect(result, equals(left(const DatabaseFailure(AppString.databaseError))));
    });
    test('Should return [ServerFailure] when call from remote is unsuccessful', () async{
      // arrange
      when(mockShalatRepository.getShalatTime(tDateTime,tPosition)).thenAnswer((_) async => left(const ServerFailure(AppString.socketException)));

      //act
      final result = await getShalatTimeUsecase.invoke(tDateTime,tPosition);

      // assert
      verify(mockShalatRepository.getShalatTime(tDateTime,tPosition));

      expect(result, equals(left(const ServerFailure(AppString.socketException))));
    });
    test('Should return [ConnectionFailure] when device not connected to internet', () async{
      // arrange
      when(mockShalatRepository.getShalatTime(tDateTime,tPosition)).thenAnswer((_) async => left(const ConnectionFailure(AppString.socketException)));

      //act
      final result = await getShalatTimeUsecase.invoke(tDateTime,tPosition);

      // assert
      verify(mockShalatRepository.getShalatTime(tDateTime,tPosition));

      expect(result, equals(left(const ConnectionFailure(AppString.socketException))));
    });
   });
}