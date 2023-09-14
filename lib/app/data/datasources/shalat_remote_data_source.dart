import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/model/shalat_time_response.dart';
import 'package:suji/core/utils/error_handler.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/values/constant.dart';

abstract class ShalatRemoteDataSource {
  Future<ShalatTimeResponse> getShalatTime(
      DateTime dateTime, Position position);
}

class ShalatRemoteDataSourceImpl extends GetConnect
    implements ShalatRemoteDataSource {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConfig.shalatBaseURL;
    httpClient.defaultContentType = 'application/json';
  }

  @override
  Future<ShalatTimeResponse> getShalatTime(
      DateTime dateTime, Position position) async {
    final endPoint =
        '${ApiConfig.shalatCalendarEndpoint}${dateTime.year}/${dateTime.month}?shafaq=general&method=15&latitude=${position.latitude}&longitude=${position.longitude}';
    try {
      final response = await get(endPoint);
      if (response.isOk) {
        return ShalatTimeResponse.fromJson(response.body);
      } else {
        throw errorHandler(response);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
