import 'package:dartz/dartz.dart';
import 'package:suji/app/domain/entities/asmaul_husna.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetAsmaulHusnaUsecase {
  final SurahRepository surahRepository;

  GetAsmaulHusnaUsecase({required this.surahRepository});

  Future<Either<Failure, List<AsmaulHusna>>> invoke() {
    return surahRepository.getAsmaulHusna();
  }
}
