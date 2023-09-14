import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:suji/app/domain/entities/shalat.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Isar? _database;

  Future<Isar?> get database async {
    _database ??= await _initDb();
    return _database;
  }

  Future<Isar> _initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [SurahSchema, SurahDetailSchema, ShalatSchema],
      directory: dir.path,
    );
    return isar;
  }

  /// =============================================
  /// [Shalat] transactional
  Future<Shalat?> getShalatTime(int id) async {
    final db = await database;
    return await db?.shalats.get(id);
  }

  Future<Shalat?> getShalatTimeByDate(String date) async {
    final db = await database;
    return await db?.shalats.filter().dateReadableEqualTo(date).findFirst();
  }

  Future<void> insertOrUpdateShalat(List<Shalat> shalat) async {
    final db = await database;
    await db!.writeTxn(() async {
      await db.shalats.putAll(shalat);
    });
  }

  /// ============================================
  /// [Surah] Transactional
  Future<List<Surah>> getAllSurah() async {
    final db = await database;
    return await db!.surahs.where().sortByNumber().findAll();
  }

  Future<List<SurahDetail>> getAyahBySurahNumber(int surahNumber) async {
    final db = await database;
    return await db!.surahDetails
        .filter()
        .numberEqualTo(surahNumber)
        .sortByVersesNumberInSurah()
        .findAll();
  }

  Future<void> insertOrUpdateSurah(List<Surah> listSurah) async {
    final db = await database;
    await db!.writeTxn(() async {
      await db.surahs.putAll(listSurah);
    });
  }

  Future<void> insertOrUpdateAyah(List<SurahDetail> listAyah) async {
    final db = await database;
    await db!.writeTxn(() async {
      await db.surahDetails.putAll(listAyah);
    });
  }

  Future<List<Surah>> getSurahByQuery(String query) async {
    final db = await database;
    return await db!.surahs
        .filter()
        .nameTransliterationIdContains(query, caseSensitive: false)
        .sortByNumber()
        .findAll();
  }
}
