import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:suji/app/data/datasources/surah_local_data_source.dart';
import 'package:suji/app/domain/entities/asmaul_husna.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/failure.dart';
import 'package:suji/app/data/datasources/surah_remote_data_source.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/core/values/constant.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahRemoteDataSource surahRemoteDataSource;
  final SurahLocalDataSource surahLocalDataSource;
  final Connectivity connectivity;

  SurahRepositoryImpl(
      {required this.surahRemoteDataSource,
      required this.surahLocalDataSource,
      required this.connectivity});

  @override
  Future<Either<Failure, List<DailyPray>>> getDailyPray() async {
    try {
      final result = await surahLocalDataSource.getDailyPray();
      return Right(result.toEntity());
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AsmaulHusna>>> getAsmaulHusna() async {
    try {
      final result = await surahLocalDataSource.getAsmaulHusna();
      return Right(result.toEntity());
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  Future<List<Surah>> fetchAllSurah() async {
    final hasConnected = await connectivity.checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result = await surahRemoteDataSource.getAllSurah();
      return result.toEntity();
    } else {
      throw const SocketException(AppString.socketException);
    }
  }

  Future<List<SurahDetail>> fetchAyahBySurahNumber(int surahNumber) async {
    final hasConnected = await connectivity.checkConnectivity();
    if (hasConnected == ConnectivityResult.mobile ||
        hasConnected == ConnectivityResult.wifi) {
      final result =
          await surahRemoteDataSource.getAyahBySurahNumber(surahNumber);
      return result.toEntity();
    } else {
      throw const SocketException(AppString.socketException);
    }
  }

  @override
  Future<Either<Failure, List<SurahDetail>>> getAyahBySurahNumber(
      int surahNumber) async {
    try {
      final data = await surahLocalDataSource.getAyahBySurahNumber(surahNumber);
      if (data.isEmpty) {
        final result = await fetchAyahBySurahNumber(surahNumber);
        await surahLocalDataSource.insertOrUpdateAyah(result);
        return Right(result);
      }
      return Right(data);
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

  @override
  Future<Either<Failure, List<Surah>>> getAllSurah() async {
    try {
      final data = await surahLocalDataSource.getAllSurah();
      if (data.isEmpty) {
        final result = await fetchAllSurah();
        await surahLocalDataSource.insertOrUpdateSurah(result);
        return Right(result);
      }
      return Right(data);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException catch (e) {
      return Left(ConnectionFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Surah>>> getSurahByQuery(query) async {
    try {
      final data = await surahLocalDataSource.getSurahByQuery(query);
      return Right(data);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
