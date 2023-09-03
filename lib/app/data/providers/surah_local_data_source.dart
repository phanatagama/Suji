import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:suji/app/data/providers/database_helper.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/core/utils/exception.dart';

abstract class SurahLocalDataSource {
  Future<List<Surah>> getAllSurah();
  Future<List<Surah>> getSurahByQuery(String query);
  Future insertOrUpdateSurah(List<Surah> listSurah);
  Future insertOrUpdateAyah(List<SurahDetail> listAyah);
  Future<List<SurahDetail>> getAyahBySurahNumber(int surahNumber);
}

class SurahLocalDataSourceImpl implements SurahLocalDataSource {
  final DatabaseHelper databaseHelper = Get.find<DatabaseHelper>();

  @override
  Future<List<Surah>> getAllSurah() async {
    final db = await databaseHelper.database;
    return db!.surahs.where().sortByNumber().findAll();
  }

  @override
  Future<List<SurahDetail>> getAyahBySurahNumber(int surahNumber) async {
    final db = await databaseHelper.database;
    return db!.surahDetails
        .filter()
        .numberEqualTo(surahNumber)
        .sortByVersesNumberInSurah()
        .findAll();
  }

  @override
  Future insertOrUpdateSurah(List<Surah> listSurah) async {
    try {
      final db = await databaseHelper.database;
      await db!.writeTxn(() async {
        await db.surahs.putAll(listSurah);
      });
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future insertOrUpdateAyah(List<SurahDetail> listAyah) async {
    try {
      final db = await databaseHelper.database;
      await db!.writeTxn(() async {
        await db.surahDetails.putAll(listAyah);
      });
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<List<Surah>> getSurahByQuery(String query) async {
    final db = await databaseHelper.database;
    return db!.surahs
        .filter()
        .nameTransliterationIdContains(query, caseSensitive: false)
        .sortByNumber()
        .findAll();
  }
}
