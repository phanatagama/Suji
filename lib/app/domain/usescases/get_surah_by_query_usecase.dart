import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetSurahByQueryUsecase {
  final SurahRepository surahRepository;

  GetSurahByQueryUsecase({required this.surahRepository});

  Future<Either<Failure, List<Surah>>> invoke(String query) {
    return surahRepository.getSurahByQuery(query);
  }
}
