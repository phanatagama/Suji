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
}
