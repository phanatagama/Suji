import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/daily_pray.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetDailyPrayUsecase {
  final SurahRepository surahRepository;
  GetDailyPrayUsecase({required this.surahRepository});

  Future<Either<Failure, List<DailyPray>>> invoke() {
    return surahRepository.getDailyPray();
  }
}
