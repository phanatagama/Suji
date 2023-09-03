import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/core/utils/failure.dart';

abstract class ShalatRepository {
  Future<Either<Failure, Shalat>> getShalatTime(Position position);
  Future<void> fetchShalatTime(Position position);
}
