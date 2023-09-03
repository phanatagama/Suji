/// api constant value
class ApiConfig {
  const ApiConfig._();
  // this api endpoint for surah
  static const String surahBaseURL = 'https://api.quran.gading.dev/';
  static const String surahEndpoint = 'surah/';

  // this api endpoint for prayer time
  static const String shalatBaseURL = 'https://api.aladhan.com/v1/';
  static const String shalatCalendarEndpoint = 'calendar/';
}

/// Define all application assets
class AppAssets {
  const AppAssets._();
  // images & icons filepath constants
  static const imgBorderSurah = 'assets/images/border_surah.png';
  static const imgBannerHome = 'assets/images/home_banner.png';
  static const imgBannerShalat = 'assets/images/salah_banner.png';
  static const iconShalatAshr = 'assets/images/Shalat-Ashar.png';
  static const iconShalatIsha = 'assets/images/Shalat-Isya.png';
  static const iconShalatMaghrib = 'assets/images/Shalat-Maghrib.png';
  static const iconShalatShubuh = 'assets/images/Shalat-Shubuh.png';
  static const iconShalatDzuhr = 'assets/images/Shalat-Zhuhur.png';
}

class AppString {
  AppString._();

  //Api call error
  static const cancelRequest = 'Request to API server was cancelled';
  static const connectionTimeOut = 'Connection timeout with API server';
  static const receiveTimeOut = 'Receive timeout in connection with API server';
  static const sendTimeOut = 'Send timeout in connection with API server';
  static const socketException = 'Check your internet connection';
  static const unexpectedError = 'Unexpected error occurred';
  static const unknownError = 'Something went wrong';
  static const duplicateEmail = 'Email has already been taken';

  // 4xx status message
  static const badRequest = 'Bad Request';
  static const unauthorized = 'Unauthorized';
  static const forbidden = 'Forbidden';
  static const notFound = 'Not Found';

  // 5xx status message
  static const internalServerError = 'Internal Server Error';
  static const badGateway = 'Bad Gateway';
  static const serviceUnavailable = 'Service Unavailable';

  // static const appFont = 'Poppins';
}
