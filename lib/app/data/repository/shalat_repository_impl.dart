import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/providers/shalat_local_data_source.dart';
import 'package:suji/app/data/providers/shalat_remote_data_source.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';

class ShalatRepositoryImpl implements ShalatRepository {
  final ShalatRemoteDataSource shalatRemoteDataSource =
      Get.put(ShalatRemoteDataSourceImpl());
  final ShalatLocalDataSource shalatLocalDataSource =
      Get.put(ShalatLocalDataSourceImpl());

  @override
  Future<Either<Failure, Shalat>> getShalatTime(Position position) async {
    try {
      final result = await shalatLocalDataSource.getShalatTime(position);
      // print('repository: $result');
      if (result == null) {
        await fetchShalatTime(position);
        final data = await shalatLocalDataSource.getShalatTime(position);
        return Right(data!);
      } else {
        return Right(result);
      }
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<void> fetchShalatTime(Position position) async {
    final hasConnected = await Connectivity().checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result = await shalatRemoteDataSource.getShalatTime(position);
      await shalatLocalDataSource.insertOrUpdateShalat(result.toEntity());
    } else {
      throw ServerException('Check your connection');
    }
  }
}
