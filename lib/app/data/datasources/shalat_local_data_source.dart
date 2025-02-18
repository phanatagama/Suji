import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/core/extensions/string_extension.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/logger.dart';
import 'package:suji/core/values/constant.dart';

abstract class ShalatLocalDataSource {
  Future<Shalat?> getShalatTime(DateTime dateTime, Position position);
  Future<Shalat?> getShalatTimeByDate(DateTime date);
  Future<String> insertOrUpdateShalat(List<Shalat> shalat);
}

class ShalatLocalDataSourceImpl implements ShalatLocalDataSource {
  final DatabaseHelper databaseHelper;
  ShalatLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<Shalat?> getShalatTime(DateTime dateTime, Position position) {
    final date = DateFormat('dd MMM y').format(dateTime);
    Log.d('[ShalatLocalDataSourceImpl][getShalatTime]', date);
    final int id = '$date${position.latitude}${position.longitude}'.fastHash();
    return databaseHelper.getShalatTime(id);
  }

  @override
  Future<String> insertOrUpdateShalat(List<Shalat> shalat) async {
    try {
      await databaseHelper.insertOrUpdateShalat(shalat);
      return AppString.insertOrUpdateSuccess;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<Shalat?> getShalatTimeByDate(DateTime dateTime) {
    final date = DateFormat('dd MMM y').format(dateTime);
    return databaseHelper.getShalatTimeByDate(date);
  }
}
