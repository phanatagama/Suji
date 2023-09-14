import 'package:intl/intl.dart';
import 'package:suji/app/domain/entities/shalat.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  /// get prayer time
  static DateTime getPrayerTime(Shalat shalatTime) {
    final now = DateTime.now();
    final dateFormat = DateFormat('y/M/d');
    final completeFormat = DateFormat('y/M/d H:m:s');

    List<String?> listPrayerTime = <String?>[
      shalatTime.timingsFajr,
      shalatTime.timingsDhuhr,
      shalatTime.timingsAsr,
      shalatTime.timingsMaghrib,
      shalatTime.timingsIsha
    ].map((e) => e?.substring(0, 5)).toList();

    final todayDate = dateFormat.format(now);
    for (var time in listPrayerTime) {
      String timeSpecific = '$todayDate $time:00';
      DateTime resultToday = completeFormat.parseStrict(timeSpecific);
      if (now.isBefore(resultToday)) {
        return resultToday;
      }
    }

    final String timeSpecific = '$todayDate ${listPrayerTime.firstOrNull}:00';
    final DateTime resultToday = completeFormat.parseStrict(timeSpecific);
    return resultToday.add(const Duration(days: 1));
  }
}
