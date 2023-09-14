import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetAllSurahUsecase {
  final SurahRepository surahRepository;
  GetAllSurahUsecase({required this.surahRepository});

  Future<Either<Failure, List<Surah>>> invoke() {
    return surahRepository.getAllSurah();
  }
}
