// To parse this JSON data, do
//
//     final asmaulHusnaResponse = asmaulHusnaResponseFromJson(jsonString);

import 'package:suji/app/domain/entities/asmaul_husna.dart';

class AsmaulHusnaResponse {
  final List<DataAsmaulHusna> dataAsmaulHusna;

  AsmaulHusnaResponse({
    required this.dataAsmaulHusna,
  });

  factory AsmaulHusnaResponse.fromJson(Map<String, dynamic> json) =>
      AsmaulHusnaResponse(
        dataAsmaulHusna: List<DataAsmaulHusna>.from(
            json['dataAsmaulHusna'].map((x) => DataAsmaulHusna.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'dataAsmaulHusna':
            List<dynamic>.from(dataAsmaulHusna.map((x) => x.toJson())),
      };

  List<AsmaulHusna> toEntity() => dataAsmaulHusna
      .map((e) => AsmaulHusna(
          arabic: e.arabic,
          index: e.index,
          latin: e.latin,
          translationEn: e.translationEn,
          translationId: e.translationId))
      .toList();
}

class DataAsmaulHusna {
  final String arabic;
  final String index;
  final String latin;
  final String translationEn;
  final String translationId;

  DataAsmaulHusna({
    required this.arabic,
    required this.index,
    required this.latin,
    required this.translationEn,
    required this.translationId,
  });

  factory DataAsmaulHusna.fromJson(Map<String, dynamic> json) =>
      DataAsmaulHusna(
        arabic: json['arabic'],
        index: json['index'],
        latin: json['latin'],
        translationEn: json['translation_en'],
        translationId: json['translation_id'],
      );

  Map<String, dynamic> toJson() => {
        'arabic': arabic,
        'index': index,
        'latin': latin,
        'translation_en': translationEn,
        'translation_id': translationId,
      };
}
