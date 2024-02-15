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
  static const imgMasjid = 'assets/images/masjid.jfif';
  static const imgBannerShalat = 'assets/images/salah_banner.png';
  static const appIcon = 'assets/images/app_icon.png';
  static const iconShalatAshr = 'assets/images/Shalat-Ashar.png';
  static const iconShalatIsha = 'assets/images/Shalat-Isya.png';
  static const iconShalatMaghrib = 'assets/images/Shalat-Maghrib.png';
  static const iconShalatShubuh = 'assets/images/Shalat-Shubuh.png';
  static const iconShalatDzuhr = 'assets/images/Shalat-Zhuhur.png';
  static const iconPrayerTime = 'assets/images/icon-prayer-time.png';
  static const iconShalat = 'assets/images/icon-shalat.png';
  static const iconQuran = 'assets/images/icon-quran.png';
  static const iconTasbih = 'assets/images/icon-tasbih.png';

  // animation
  static const animationNotFound = 'assets/animation/animation_not_found.json';

  // data model json
  static const jsonAsmaulHusna = 'assets/model/asmaul_husna.json';
  static const jsonDailyPray = 'assets/model/daily_pray.json';
}

class AppString {
  AppString._();
  //Database call message
  static const databaseError = 'Database Error';
  static const insertOrUpdateSuccess = 'Insert/Update Success';

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

  // constant string
  static const shubuh = 'Shubuh';
  static const dzuhr = 'Dzuhur';
  static const ashr = 'Ashr';
  static const maghrib = 'Maghrib';
  static const isha = 'Isha';
  static const tasbihDigital = 'Tasbih Digital';
  static const asmaulHusna = 'Asmaul Husna';
  static const alQuran = 'Al-Quran';
  static const alarm = 'Alarm';
  static const refresh = 'Refresh';
  static const surah = 'Surah';
}
