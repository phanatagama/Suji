import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:suji/core/extensions/string_extension.dart';
part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Surah with _$Surah {
  Surah._();
  factory Surah({
    required int number,
    required int numberOfVerses,
    required String nameShort,
    required String nameLong,
    required String nameTransliterationId,
    required String revelationId,
  }) = _Surah;

  Id get id => '$number'.fastHash();
  factory Surah.fromJson(Map<String, Object?> json) => _$SurahFromJson(json);
}
