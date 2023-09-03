import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/providers/surah_local_data_source.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/app/data/providers/surah_remote_data_source.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahRemoteDataSource api = Get.find<SurahRemoteDataSource>();
  final SurahLocalDataSource local = Get.find<SurahLocalDataSource>();

  // @override
  Future<void> fetchAllSurah() async {
    // try {
    final hasConnected = await Connectivity().checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result = await api.getAllSurah();
      await local.insertOrUpdateSurah(result.toEntity());
    } else {
      throw ServerException('Check your connection');
    }
    // return getAllSurahCache();
    // } on ServerException catch (e) {
    //   Get.snackbar(
    //     "Information",
    //     e.toString(),
    //     backgroundColor: Colors.red,
    //   );
    // return Left(ServerFailure(e.toString()));
    // return getAllSurahCache();
    // } on DatabaseException catch (e) {
    //   return Left(DatabaseFailure(e.toString()));
    // }
  }

  Future<void> fetchAyahBySurahNumber(int surahNumber) async {
    final hasConnected = await Connectivity().checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result = await api.getAyahBySurahNumber(surahNumber);
      await local.insertOrUpdateAyah(result.toEntity());
    } else {
      throw ServerException('Check your connection');
    }
  }

  @override
  Future<Either<Failure, List<SurahDetail>>> getAyahBySurahNumber(
      int surahNumber) async {
    try {
      // final hasConnected = await Connectivity().checkConnectivity();
      // if (hasConnected == ConnectivityResult.mobile ||
      //     hasConnected == ConnectivityResult.wifi) {
      //   final result = await api.getAyahBySurahNumber(surahNumber);
      //   await local.insertOrUpdateAyah(result.toEntity());
      // }
      // return getAyahBySurahNumberCache(surahNumber);

      final data = await local.getAyahBySurahNumber(surahNumber);
      if (data.isEmpty) {
        await fetchAyahBySurahNumber(surahNumber);
        final newData = await local.getAyahBySurahNumber(surahNumber);
        return Right(newData);
      }
      return Right(data);
    } on ServerException catch (e) {
      // return getAyahBySurahNumberCache(surahNumber);
      return Left(ServerFailure(e.message));
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, String>> insertOrUpdateSurah(
      List<Surah> listSurah) async {
    try {
      await local.insertOrUpdateSurah(listSurah);
      return const Right("Insert Success");
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Surah>>> getAllSurah() async {
    try {
      final data = await local.getAllSurah();
      if (data.isEmpty) {
        await fetchAllSurah();
        final newData = await local.getAllSurah();
        // print(newData);
        return Right(newData);
      }
      return Right(data);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  Future<Either<Failure, List<SurahDetail>>> getAyahBySurahNumberCache(
      int surahNumber) async {
    try {
      final data = await local.getAyahBySurahNumber(surahNumber);
      return Right(data);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Surah>>> getSurahByQuery(query) async {
    try {
      final data = await local.getSurahByQuery(query);
      return Right(data);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> insertOrUpdateAyah(
      List<SurahDetail> listAyah) async {
    try {
      await local.insertOrUpdateAyah(listAyah);
      return const Right("Insert Success");
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
