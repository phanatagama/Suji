import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetAyahBySurahNumberUsecase {
  final SurahRepository surahRepository;
  GetAyahBySurahNumberUsecase({required this.surahRepository});
  Future<Either<Failure, List<SurahDetail>>> invoke(int surahNumber) {
    return surahRepository.getAyahBySurahNumber(surahNumber);
  }
}
