import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:suji/app/data/model/asmaul_husna_response.dart';
import 'package:suji/app/data/model/daily_pray_response.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/domain/entities/surah.dart';
import 'package:suji/app/domain/entities/surah_detail.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/values/constant.dart';

abstract class SurahLocalDataSource {
  Future<List<Surah>> getAllSurah();
  Future<AsmaulHusnaResponse> getAsmaulHusna();
  Future<List<Surah>> getSurahByQuery(String query);
  Future<String> insertOrUpdateSurah(List<Surah> listSurah);
  Future<String> insertOrUpdateAyah(List<SurahDetail> listAyah);
  Future<DataDailyPrayResponse> getDailyPray();
  Future<List<SurahDetail>> getAyahBySurahNumber(int surahNumber);
}

class SurahLocalDataSourceImpl implements SurahLocalDataSource {
  final DatabaseHelper databaseHelper;

  SurahLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<List<Surah>> getAllSurah() {
    return databaseHelper.getAllSurah();
  }

  @override
  Future<DataDailyPrayResponse> getDailyPray() async {
    try {
      final String response =
          await rootBundle.loadString(AppAssets.jsonDailyPray);
      final data = DataDailyPrayResponse.fromJson(json.decode(response));
      return data;
    } catch (e) {
      throw DatabaseException(AppString.databaseError);
    }
  }

  @override
  Future<AsmaulHusnaResponse> getAsmaulHusna() async {
    try {
      final String response =
          await rootBundle.loadString(AppAssets.jsonAsmaulHusna);
      final data = AsmaulHusnaResponse.fromJson(json.decode(response));
      return data;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<List<SurahDetail>> getAyahBySurahNumber(int surahNumber) {
    return databaseHelper.getAyahBySurahNumber(surahNumber);
  }

  @override
  Future<String> insertOrUpdateSurah(List<Surah> listSurah) async {
    try {
      await databaseHelper.insertOrUpdateSurah(listSurah);
      return AppString.insertOrUpdateSuccess;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> insertOrUpdateAyah(List<SurahDetail> listAyah) async {
    try {
      await databaseHelper.insertOrUpdateAyah(listAyah);
      return AppString.insertOrUpdateSuccess;
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<List<Surah>> getSurahByQuery(String query) {
    return databaseHelper.getSurahByQuery(query);
  }
}
