import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:suji/app/data/datasources/shalat_local_data_source.dart';
import 'package:suji/app/data/datasources/shalat_remote_data_source.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/core/values/constant.dart';

class ShalatRepositoryImpl implements ShalatRepository {
  final ShalatRemoteDataSource shalatRemoteDataSource;
  final ShalatLocalDataSource shalatLocalDataSource;
  final Connectivity connectivity;

  ShalatRepositoryImpl(
      {required this.shalatRemoteDataSource,
      required this.shalatLocalDataSource,
      required this.connectivity
      });

  @override
  Future<Either<Failure, Shalat>> getShalatTime(DateTime dateTime, Position position) async {
    try {
      final result = await shalatLocalDataSource.getShalatTime(dateTime, position);
      if (result == null) {
        final data = await fetchShalatTime(dateTime, position);
        await shalatLocalDataSource.insertOrUpdateShalat(data);
        return getShalatTime(dateTime, position);
      } else {
        return Right(result);
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } on SocketException catch (e) {
      return Left(ConnectionFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  
  Future<List<Shalat>> fetchShalatTime(DateTime dateTime, Position position) async {
    final hasConnected = await connectivity.checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result = await shalatRemoteDataSource.getShalatTime(dateTime, position);
      return result.toEntity();
    } else {
      throw const SocketException(AppString.socketException);
    }
  }
}
