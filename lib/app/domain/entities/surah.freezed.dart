// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  int get number => throw _privateConstructorUsedError;
  int get numberOfVerses => throw _privateConstructorUsedError;
  String get nameShort => throw _privateConstructorUsedError;
  String get nameLong => throw _privateConstructorUsedError;
  String get nameTransliterationId => throw _privateConstructorUsedError;
  String get revelationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      String nameShort,
      String nameLong,
      String nameTransliterationId,
      String revelationId});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? nameShort = null,
    Object? nameLong = null,
    Object? nameTransliterationId = null,
    Object? revelationId = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      nameShort: null == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
              as String,
      nameLong: null == nameLong
          ? _value.nameLong
          : nameLong // ignore: cast_nullable_to_non_nullable
              as String,
      nameTransliterationId: null == nameTransliterationId
          ? _value.nameTransliterationId
          : nameTransliterationId // ignore: cast_nullable_to_non_nullable
              as String,
      revelationId: null == revelationId
          ? _value.revelationId
          : revelationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$_SurahCopyWith(_$_Surah value, $Res Function(_$_Surah) then) =
      __$$_SurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      int numberOfVerses,
      String nameShort,
      String nameLong,
      String nameTransliterationId,
      String revelationId});
}

/// @nodoc
class __$$_SurahCopyWithImpl<$Res> extends _$SurahCopyWithImpl<$Res, _$_Surah>
    implements _$$_SurahCopyWith<$Res> {
  __$$_SurahCopyWithImpl(_$_Surah _value, $Res Function(_$_Surah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? numberOfVerses = null,
    Object? nameShort = null,
    Object? nameLong = null,
    Object? nameTransliterationId = null,
    Object? revelationId = null,
  }) {
    return _then(_$_Surah(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfVerses: null == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int,
      nameShort: null == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
              as String,
      nameLong: null == nameLong
          ? _value.nameLong
          : nameLong // ignore: cast_nullable_to_non_nullable
              as String,
      nameTransliterationId: null == nameTransliterationId
          ? _value.nameTransliterationId
          : nameTransliterationId // ignore: cast_nullable_to_non_nullable
              as String,
      revelationId: null == revelationId
          ? _value.revelationId
          : revelationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Surah extends _Surah {
  _$_Surah(
      {required this.number,
      required this.numberOfVerses,
      required this.nameShort,
      required this.nameLong,
      required this.nameTransliterationId,
      required this.revelationId})
      : super._();

  factory _$_Surah.fromJson(Map<String, dynamic> json) =>
      _$$_SurahFromJson(json);

  @override
  final int number;
  @override
  final int numberOfVerses;
  @override
  final String nameShort;
  @override
  final String nameLong;
  @override
  final String nameTransliterationId;
  @override
  final String revelationId;

  @override
  String toString() {
    return 'Surah(number: $number, numberOfVerses: $numberOfVerses, nameShort: $nameShort, nameLong: $nameLong, nameTransliterationId: $nameTransliterationId, revelationId: $revelationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surah &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.nameShort, nameShort) ||
                other.nameShort == nameShort) &&
            (identical(other.nameLong, nameLong) ||
                other.nameLong == nameLong) &&
            (identical(other.nameTransliterationId, nameTransliterationId) ||
                other.nameTransliterationId == nameTransliterationId) &&
            (identical(other.revelationId, revelationId) ||
                other.revelationId == revelationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, numberOfVerses,
      nameShort, nameLong, nameTransliterationId, revelationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      __$$_SurahCopyWithImpl<_$_Surah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahToJson(
      this,
    );
  }
}

abstract class _Surah extends Surah {
  factory _Surah(
      {required final int number,
      required final int numberOfVerses,
      required final String nameShort,
      required final String nameLong,
      required final String nameTransliterationId,
      required final String revelationId}) = _$_Surah;
  _Surah._() : super._();

  factory _Surah.fromJson(Map<String, dynamic> json) = _$_Surah.fromJson;

  @override
  int get number;
  @override
  int get numberOfVerses;
  @override
  String get nameShort;
  @override
  String get nameLong;
  @override
  String get nameTransliterationId;
  @override
  String get revelationId;
  @override
  @JsonKey(ignore: true)
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      throw _privateConstructorUsedError;
}
