import 'package:suji/app/domain/entities/shalat.dart';

class ShalatTimeResponse {
  final int? code;
  final String? status;
  final List<Datum>? data;

  ShalatTimeResponse({
    this.code,
    this.status,
    this.data,
  });

  factory ShalatTimeResponse.fromJson(Map<String, dynamic> json) =>
      ShalatTimeResponse(
        code: json["code"],
        status: json["status"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
  List<Shalat> toEntity() {
    return data
            ?.where((element) =>
                element.timings?.fajr != null &&
                element.timings?.dhuhr != null &&
                element.timings?.asr != null &&
                element.timings?.maghrib != null &&
                element.timings?.isha != null &&
                element.date?.timestamp != null &&
                element.date?.readable != null &&
                element.meta?.latitude != null &&
                element.meta?.longitude != null &&
                element.meta?.timezone != null)
            .map((e) => Shalat(
                timingsFajr: e.timings!.fajr!,
                timingsDhuhr: e.timings!.dhuhr!,
                timingsAsr: e.timings!.asr!,
                timingsMaghrib: e.timings!.maghrib!,
                timingsIsha: e.timings!.isha!,
                dateTimestamp: e.date!.timestamp!,
                dateReadable: e.date!.readable!,
                metaLatitude: e.meta!.latitude!.toString(),
                metaLongitude: e.meta!.longitude!.toString(),
                metaTimezone: e.meta!.timezone!))
            .toList() ??
        [];
  }
}

class Datum {
  final Timings? timings;
  final Date? date;
  final Meta? meta;

  Datum({
    this.timings,
    this.date,
    this.meta,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        timings:
            json["timings"] == null ? null : Timings.fromJson(json["timings"]),
        date: json["date"] == null ? null : Date.fromJson(json["date"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "timings": timings?.toJson(),
        "date": date?.toJson(),
        "meta": meta?.toJson(),
      };
}

class Date {
  final String? readable;
  final String? timestamp;
  final Gregorian? gregorian;
  final Hijri? hijri;

  Date({
    this.readable,
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        readable: json["readable"],
        timestamp: json["timestamp"],
        gregorian: json["gregorian"] == null
            ? null
            : Gregorian.fromJson(json["gregorian"]),
        hijri: json["hijri"] == null ? null : Hijri.fromJson(json["hijri"]),
      );

  Map<String, dynamic> toJson() => {
        "readable": readable,
        "timestamp": timestamp,
        "gregorian": gregorian?.toJson(),
        "hijri": hijri?.toJson(),
      };
}

class Gregorian {
  final String? date;
  final String? format;
  final String? day;
  final GregorianWeekday? weekday;
  final GregorianMonth? month;
  final String? year;
  final Designation? designation;

  Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  factory Gregorian.fromJson(Map<String, dynamic> json) => Gregorian(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: json["weekday"] == null
            ? null
            : GregorianWeekday.fromJson(json["weekday"]),
        month: json["month"] == null
            ? null
            : GregorianMonth.fromJson(json["month"]),
        year: json["year"],
        designation: json["designation"] == null
            ? null
            : Designation.fromJson(json["designation"]),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "format": format,
        "day": day,
        "weekday": weekday?.toJson(),
        "month": month?.toJson(),
        "year": year,
        "designation": designation?.toJson(),
      };
}

class Designation {
  final String? abbreviated;
  final String? expanded;

  Designation({
    this.abbreviated,
    this.expanded,
  });

  factory Designation.fromJson(Map<String, dynamic> json) => Designation(
        abbreviated: json["abbreviated"],
        expanded: json["expanded"],
      );

  Map<String, dynamic> toJson() => {
        "abbreviated": abbreviated,
        "expanded": expanded,
      };
}

class GregorianMonth {
  final int? number;
  final String? en;

  GregorianMonth({
    this.number,
    this.en,
  });

  factory GregorianMonth.fromJson(Map<String, dynamic> json) => GregorianMonth(
        number: json["number"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "en": en,
      };
}

class GregorianWeekday {
  final String? en;

  GregorianWeekday({
    this.en,
  });

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      GregorianWeekday(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}

class Hijri {
  final String? date;
  final String? format;
  final String? day;
  final HijriWeekday? weekday;
  final HijriMonth? month;
  final String? year;
  final Designation? designation;
  final List<dynamic>? holidays;

  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
  });

  factory Hijri.fromJson(Map<String, dynamic> json) => Hijri(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: json["weekday"] == null
            ? null
            : HijriWeekday.fromJson(json["weekday"]),
        month:
            json["month"] == null ? null : HijriMonth.fromJson(json["month"]),
        year: json["year"],
        designation: json["designation"] == null
            ? null
            : Designation.fromJson(json["designation"]),
        holidays: json["holidays"] == null
            ? []
            : List<dynamic>.from(json["holidays"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "format": format,
        "day": day,
        "weekday": weekday?.toJson(),
        "month": month?.toJson(),
        "year": year,
        "designation": designation?.toJson(),
        "holidays":
            holidays == null ? [] : List<dynamic>.from(holidays!.map((x) => x)),
      };
}

class HijriMonth {
  final int? number;
  final String? en;
  final String? ar;

  HijriMonth({
    this.number,
    this.en,
    this.ar,
  });

  factory HijriMonth.fromJson(Map<String, dynamic> json) => HijriMonth(
        number: json["number"],
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "en": en,
        "ar": ar,
      };
}

class HijriWeekday {
  final String? en;
  final String? ar;

  HijriWeekday({
    this.en,
    this.ar,
  });

  factory HijriWeekday.fromJson(Map<String, dynamic> json) => HijriWeekday(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

class Meta {
  final double? latitude;
  final double? longitude;
  final String? timezone;
  final Method? method;
  final String? latitudeAdjustmentMethod;
  final String? midnightMode;
  final String? school;
  final Map<String, int>? offset;

  Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        timezone: json["timezone"],
        method: json["method"] == null ? null : Method.fromJson(json["method"]),
        latitudeAdjustmentMethod: json["latitudeAdjustmentMethod"],
        midnightMode: json["midnightMode"],
        school: json["school"],
        offset: Map.from(json["offset"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "timezone": timezone,
        "method": method?.toJson(),
        "latitudeAdjustmentMethod": latitudeAdjustmentMethod,
        "midnightMode": midnightMode,
        "school": school,
        "offset":
            Map.from(offset!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Method {
  final int? id;
  final String? name;
  final Params? params;

  Method({
    this.id,
    this.name,
    this.params,
  });

  factory Method.fromJson(Map<String, dynamic> json) => Method(
        id: json["id"],
        name: json["name"],
        params: json["params"] == null ? null : Params.fromJson(json["params"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "params": params?.toJson(),
      };
}

class Params {
  final String? shafaq;

  Params({
    this.shafaq,
  });

  factory Params.fromJson(Map<String, dynamic> json) => Params(
        shafaq: json["shafaq"],
      );

  Map<String, dynamic> toJson() => {
        "shafaq": shafaq,
      };
}

class Timings {
  final String? fajr;
  final String? sunrise;
  final String? dhuhr;
  final String? asr;
  final String? sunset;
  final String? maghrib;
  final String? isha;
  final String? imsak;
  final String? midnight;
  final String? firstthird;
  final String? lastthird;

  Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.imsak,
    this.midnight,
    this.firstthird,
    this.lastthird,
  });

  factory Timings.fromJson(Map<String, dynamic> json) => Timings(
        fajr: json["Fajr"],
        sunrise: json["Sunrise"],
        dhuhr: json["Dhuhr"],
        asr: json["Asr"],
        sunset: json["Sunset"],
        maghrib: json["Maghrib"],
        isha: json["Isha"],
        imsak: json["Imsak"],
        midnight: json["Midnight"],
        firstthird: json["Firstthird"],
        lastthird: json["Lastthird"],
      );

  Map<String, dynamic> toJson() => {
        "Fajr": fajr,
        "Sunrise": sunrise,
        "Dhuhr": dhuhr,
        "Asr": asr,
        "Sunset": sunset,
        "Maghrib": maghrib,
        "Isha": isha,
        "Imsak": imsak,
        "Midnight": midnight,
        "Firstthird": firstthird,
        "Lastthird": lastthird,
      };
}
