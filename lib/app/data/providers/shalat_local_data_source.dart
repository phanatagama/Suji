import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:suji/app/data/providers/database_helper.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/core/extensions/string_extension.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/utils/logger.dart';

abstract class ShalatLocalDataSource {
  Future<Shalat?> getShalatTime(Position position);
  Future<Shalat?> getShalatTimeByDate(DateTime date);
  Future<void> insertOrUpdateShalat(List<Shalat> shalat);
}

class ShalatLocalDataSourceImpl implements ShalatLocalDataSource {
  final DatabaseHelper databaseHelper = Get.find<DatabaseHelper>();

  @override
  Future<Shalat?> getShalatTime(Position position) async {
    final db = await databaseHelper.database;
    final now = DateFormat('dd MMM y').format(DateTime.now());
    Log.d('[ShalatLocalDataSourceImpl][getShalatTime]', now);
    return db!.shalats
        .get('$now${position.latitude}${position.longitude}'.fastHash());
  }

  @override
  Future<void> insertOrUpdateShalat(List<Shalat> shalat) async {
    try {
      final db = await databaseHelper.database;
      await db!.writeTxn(() async {
        await db.shalats.putAll(shalat);
      });
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<Shalat?> getShalatTimeByDate(DateTime date) async {
    final db = await databaseHelper.database;
    final todayFormated = DateFormat('dd MMM y').format(date);
    return db!.shalats.filter().dateReadableEqualTo(todayFormated).findFirst();
  }
}
