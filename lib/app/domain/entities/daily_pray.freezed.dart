// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_pray.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyPray {
  String get title => throw _privateConstructorUsedError;
  String get arabic => throw _privateConstructorUsedError;
  String get latin => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyPrayCopyWith<DailyPray> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPrayCopyWith<$Res> {
  factory $DailyPrayCopyWith(DailyPray value, $Res Function(DailyPray) then) =
      _$DailyPrayCopyWithImpl<$Res, DailyPray>;
  @useResult
  $Res call({String title, String arabic, String latin, String translation});
}

/// @nodoc
class _$DailyPrayCopyWithImpl<$Res, $Val extends DailyPray>
    implements $DailyPrayCopyWith<$Res> {
  _$DailyPrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? arabic = null,
    Object? latin = null,
    Object? translation = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyPrayCopyWith<$Res> implements $DailyPrayCopyWith<$Res> {
  factory _$$_DailyPrayCopyWith(
          _$_DailyPray value, $Res Function(_$_DailyPray) then) =
      __$$_DailyPrayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String arabic, String latin, String translation});
}

/// @nodoc
class __$$_DailyPrayCopyWithImpl<$Res>
    extends _$DailyPrayCopyWithImpl<$Res, _$_DailyPray>
    implements _$$_DailyPrayCopyWith<$Res> {
  __$$_DailyPrayCopyWithImpl(
      _$_DailyPray _value, $Res Function(_$_DailyPray) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? arabic = null,
    Object? latin = null,
    Object? translation = null,
  }) {
    return _then(_$_DailyPray(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      latin: null == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DailyPray extends _DailyPray {
  _$_DailyPray(
      {required this.title,
      required this.arabic,
      required this.latin,
      required this.translation})
      : super._();

  @override
  final String title;
  @override
  final String arabic;
  @override
  final String latin;
  @override
  final String translation;

  @override
  String toString() {
    return 'DailyPray(title: $title, arabic: $arabic, latin: $latin, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyPray &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.latin, latin) || other.latin == latin) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, arabic, latin, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyPrayCopyWith<_$_DailyPray> get copyWith =>
      __$$_DailyPrayCopyWithImpl<_$_DailyPray>(this, _$identity);
}

abstract class _DailyPray extends DailyPray {
  factory _DailyPray(
      {required final String title,
      required final String arabic,
      required final String latin,
      required final String translation}) = _$_DailyPray;
  _DailyPray._() : super._();

  @override
  String get title;
  @override
  String get arabic;
  @override
  String get latin;
  @override
  String get translation;
  @override
  @JsonKey(ignore: true)
  _$$_DailyPrayCopyWith<_$_DailyPray> get copyWith =>
      throw _privateConstructorUsedError;
}
