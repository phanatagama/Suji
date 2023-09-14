import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/asmaul_husna.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/core/utils/failure.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<Surah>>> getAllSurah();
  Future<Either<Failure, List<Surah>>> getSurahByQuery(String query);
  Future<Either<Failure, List<SurahDetail>>> getAyahBySurahNumber(
      int surahNumber);
  Future<Either<Failure, List<DailyPray>>> getDailyPray();
  Future<Either<Failure, List<AsmaulHusna>>> getAsmaulHusna();
}
