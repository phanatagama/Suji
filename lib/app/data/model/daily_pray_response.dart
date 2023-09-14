// To parse this JSON data, do
//
//     final dataDailyPray = dataDailyPrayFromJson(jsonString);

import 'package:suji/app/domain/entities/daily_pray.dart';

class DataDailyPrayResponse {
  final List<DataDailyPrayElement> dataDailyPray;

  DataDailyPrayResponse({
    required this.dataDailyPray,
  });

  factory DataDailyPrayResponse.fromJson(Map<String, dynamic> json) =>
      DataDailyPrayResponse(
        dataDailyPray: List<DataDailyPrayElement>.from(
            json['dataDailyPray'].map((x) => DataDailyPrayElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'dataDailyPray':
            List<dynamic>.from(dataDailyPray.map((x) => x.toJson())),
      };

  List<DailyPray> toEntity() => dataDailyPray.map((e) => DailyPray(
      title: e.title,
      arabic: e.arabic,
      latin: e.latin,
      translation: e.translation)).toList();
}

class DataDailyPrayElement {
  final String title;
  final String arabic;
  final String latin;
  final String translation;

  DataDailyPrayElement({
    required this.title,
    required this.arabic,
    required this.latin,
    required this.translation,
  });

  factory DataDailyPrayElement.fromJson(Map<String, dynamic> json) =>
      DataDailyPrayElement(
        title: json['title'],
        arabic: json['arabic'],
        latin: json['latin'],
        translation: json['translation'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'arabic': arabic,
        'latin': latin,
        'translation': translation,
      };
}
