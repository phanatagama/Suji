import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:suji/core/extensions/string_extension.dart';

part 'surah_detail.freezed.dart';
part 'surah_detail.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class SurahDetail with _$SurahDetail {
  SurahDetail._();
  factory SurahDetail({
    required int number,
    required int numberOfVerses,
    required String nameShort,
    required String nameLong,
    required String nameTransliterationId,
    required String nameTranslationId,
    required String relevationId,
    required String tafsirId,
    required String preBismillahTextArab,
    required String preBismillahAudioPrimary,
    required String versesTextArab,
    required int versesNumberInQuran,
    required int versesNumberInSurah,
    required String versesTranslationId,
    required String versesAudioPrimary,
    required String versesTafsirIdShort,
  }) = _SurahDetail;

  Id get id => '$versesNumberInQuran'.fastHash();
  factory SurahDetail.fromJson(Map<String, Object?> json) =>
      _$SurahDetailFromJson(json);
}
