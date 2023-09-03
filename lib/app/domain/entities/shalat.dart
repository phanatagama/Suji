import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:suji/core/extensions/string_extension.dart';

part 'shalat.freezed.dart';
part 'shalat.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Shalat with _$Shalat {
  Shalat._();
  factory Shalat({
    String? timingsFajr,
    String? timingsDhuhr,
    String? timingsAsr,
    String? timingsMaghrib,
    String? timingsIsha,
    String? dateTimestamp,
    String? dateReadable,
    String? metaLatitude,
    String? metaLongitude,
    String? metaTimezone,
  }) = _Shalat;

  Id get id => '$dateReadable$metaLatitude$metaLongitude'.fastHash();
  factory Shalat.fromJson(Map<String, Object?> json) => _$ShalatFromJson(json);
}
