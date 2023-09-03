import 'package:get/get.dart';
import 'package:suji/core/utils/error_handler.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/app/data/model/surah_detail_response.dart';
import 'package:suji/core/values/constant.dart';

import '../model/list_surah_response.dart';

abstract class SurahRemoteDataSource {
  Future<ListSurah> getAllSurah();
  Future<SurahDetailResponse> getAyahBySurahNumber(int number);
}

class SurahRemoteDataSourceImpl extends GetConnect
    implements SurahRemoteDataSource {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConfig.surahBaseURL;
  }

  @override
  Future<ListSurah> getAllSurah() async {
    try {
      final response = await get(ApiConfig.surahEndpoint);
      if (response.isOk) {
        return ListSurah.fromJson(response.body);
      } else {
        return errorHandler(response);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<SurahDetailResponse> getAyahBySurahNumber(int surahNumber) async {
    try {
      final response = await get('${ApiConfig.surahEndpoint}$surahNumber');
      if (response.isOk) {
        final responseBody = response.body;
        return SurahDetailResponse.fromJson(responseBody);
      } else {
        return errorHandler(response);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
