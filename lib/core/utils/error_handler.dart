import 'package:get/get_connect/http/src/response/response.dart';
import 'package:suji/core/values/constant.dart';

dynamic errorHandler(Response response) {
  // print(response.toString());
  // print(response.statusCode);
  // print(response.status);
  // print(response.body);
  switch (response.statusCode) {
    case 200:
    case 201:
    case 202:
      var responseJson = response.body.toString();
      return responseJson;
    case 400:
      throw AppString.badRequest;
    case 401:
      throw AppString.unauthorized;
    case 403:
      throw AppString.forbidden;
    case 404:
      throw AppString.notFound;
    case 408:
      throw AppString.connectionTimeOut;
    case 500:
      throw AppString.internalServerError;
    case 502:
      throw AppString.badGateway;
    case 503:
      throw AppString.serviceUnavailable;
    default:
      throw AppString.unexpectedError;
  }
}
