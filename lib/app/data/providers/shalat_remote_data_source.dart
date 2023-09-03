import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:suji/app/data/model/shalat_time_response.dart';
import 'package:suji/core/utils/error_handler.dart';
import 'package:suji/core/utils/exception.dart';
import 'package:suji/core/values/constant.dart';

abstract class ShalatRemoteDataSource {
  Future<ShalatTimeResponse> getShalatTime(Position position);
}

class ShalatRemoteDataSourceImpl extends GetConnect
    implements ShalatRemoteDataSource {
  DateTime now = DateTime.now();

  @override
  void onInit() {
    httpClient.baseUrl = ApiConfig.shalatBaseURL;
    httpClient.defaultContentType = 'application/json';
  }

  @override
  Future<ShalatTimeResponse> getShalatTime(Position position) async {
    // print("Position from remote");
    // print("latitude : ${position.latitude}");
    // print("longitude : ${position.longitude}");
    final endPoint =
        '${ApiConfig.shalatCalendarEndpoint}${now.year}/${now.month}?shafaq=general&method=15&latitude=${position.latitude}&longitude=${position.longitude}';
    // print("${httpClient.baseUrl}$endPoint");
    try {
      final response = await get(endPoint);
      if (response.isOk) {
        return ShalatTimeResponse.fromJson(response.body);
      } else {
        // print('masuk error handler');
        throw errorHandler(response);
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
