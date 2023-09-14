import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/core/utils/failure.dart';

class GetShalatTimeUsecase {
  final ShalatRepository shalatRepository;
  GetShalatTimeUsecase({required this.shalatRepository});
  
  Future<Either<Failure, Shalat>> invoke(DateTime dateTime, Position position) {
    return shalatRepository.getShalatTime(dateTime, position);
  }
}
