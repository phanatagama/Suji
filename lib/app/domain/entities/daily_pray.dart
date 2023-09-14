import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_pray.freezed.dart';
@freezed
class DailyPray with _$DailyPray{
  const DailyPray._();
  factory DailyPray(
    {
      required String title,
      required String arabic,
      required String latin,
      required String translation,
    }
  ) = _DailyPray;
}