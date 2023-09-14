// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSurahDetailCollection on Isar {
  IsarCollection<SurahDetail> get surahDetails => this.collection();
}

const SurahDetailSchema = CollectionSchema(
  name: r'SurahDetail',
  id: 4079543045807720233,
  properties: {
    r'nameLong': PropertySchema(
      id: 0,
      name: r'nameLong',
      type: IsarType.string,
    ),
    r'nameShort': PropertySchema(
      id: 1,
      name: r'nameShort',
      type: IsarType.string,
    ),
    r'nameTranslationId': PropertySchema(
      id: 2,
      name: r'nameTranslationId',
      type: IsarType.string,
    ),
    r'nameTransliterationId': PropertySchema(
      id: 3,
      name: r'nameTransliterationId',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 4,
      name: r'number',
      type: IsarType.long,
    ),
    r'numberOfVerses': PropertySchema(
      id: 5,
      name: r'numberOfVerses',
      type: IsarType.long,
    ),
    r'preBismillahAudioPrimary': PropertySchema(
      id: 6,
      name: r'preBismillahAudioPrimary',
      type: IsarType.string,
    ),
    r'preBismillahTextArab': PropertySchema(
      id: 7,
      name: r'preBismillahTextArab',
      type: IsarType.string,
    ),
    r'relevationId': PropertySchema(
      id: 8,
      name: r'relevationId',
      type: IsarType.string,
    ),
    r'tafsirId': PropertySchema(
      id: 9,
      name: r'tafsirId',
      type: IsarType.string,
    ),
    r'versesAudioPrimary': PropertySchema(
      id: 10,
      name: r'versesAudioPrimary',
      type: IsarType.string,
    ),
    r'versesNumberInQuran': PropertySchema(
      id: 11,
      name: r'versesNumberInQuran',
      type: IsarType.long,
    ),
    r'versesNumberInSurah': PropertySchema(
      id: 12,
      name: r'versesNumberInSurah',
      type: IsarType.long,
    ),
    r'versesTafsirIdShort': PropertySchema(
      id: 13,
      name: r'versesTafsirIdShort',
      type: IsarType.string,
    ),
    r'versesTextArab': PropertySchema(
      id: 14,
      name: r'versesTextArab',
      type: IsarType.string,
    ),
    r'versesTranslationId': PropertySchema(
      id: 15,
      name: r'versesTranslationId',
      type: IsarType.string,
    )
  },
  estimateSize: _surahDetailEstimateSize,
  serialize: _surahDetailSerialize,
  deserialize: _surahDetailDeserialize,
  deserializeProp: _surahDetailDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _surahDetailGetId,
  getLinks: _surahDetailGetLinks,
  attach: _surahDetailAttach,
  version: '3.1.0+1',
);

int _surahDetailEstimateSize(
  SurahDetail object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nameLong.length * 3;
  bytesCount += 3 + object.nameShort.length * 3;
  bytesCount += 3 + object.nameTranslationId.length * 3;
  bytesCount += 3 + object.nameTransliterationId.length * 3;
  bytesCount += 3 + object.preBismillahAudioPrimary.length * 3;
  bytesCount += 3 + object.preBismillahTextArab.length * 3;
  bytesCount += 3 + object.relevationId.length * 3;
  bytesCount += 3 + object.tafsirId.length * 3;
  bytesCount += 3 + object.versesAudioPrimary.length * 3;
  bytesCount += 3 + object.versesTafsirIdShort.length * 3;
  bytesCount += 3 + object.versesTextArab.length * 3;
  bytesCount += 3 + object.versesTranslationId.length * 3;
  return bytesCount;
}

void _surahDetailSerialize(
  SurahDetail object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nameLong);
  writer.writeString(offsets[1], object.nameShort);
  writer.writeString(offsets[2], object.nameTranslationId);
  writer.writeString(offsets[3], object.nameTransliterationId);
  writer.writeLong(offsets[4], object.number);
  writer.writeLong(offsets[5], object.numberOfVerses);
  writer.writeString(offsets[6], object.preBismillahAudioPrimary);
  writer.writeString(offsets[7], object.preBismillahTextArab);
  writer.writeString(offsets[8], object.relevationId);
  writer.writeString(offsets[9], object.tafsirId);
  writer.writeString(offsets[10], object.versesAudioPrimary);
  writer.writeLong(offsets[11], object.versesNumberInQuran);
  writer.writeLong(offsets[12], object.versesNumberInSurah);
  writer.writeString(offsets[13], object.versesTafsirIdShort);
  writer.writeString(offsets[14], object.versesTextArab);
  writer.writeString(offsets[15], object.versesTranslationId);
}

SurahDetail _surahDetailDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SurahDetail(
    nameLong: reader.readString(offsets[0]),
    nameShort: reader.readString(offsets[1]),
    nameTranslationId: reader.readString(offsets[2]),
    nameTransliterationId: reader.readString(offsets[3]),
    number: reader.readLong(offsets[4]),
    numberOfVerses: reader.readLong(offsets[5]),
    preBismillahAudioPrimary: reader.readString(offsets[6]),
    preBismillahTextArab: reader.readString(offsets[7]),
    relevationId: reader.readString(offsets[8]),
    tafsirId: reader.readString(offsets[9]),
    versesAudioPrimary: reader.readString(offsets[10]),
    versesNumberInQuran: reader.readLong(offsets[11]),
    versesNumberInSurah: reader.readLong(offsets[12]),
    versesTafsirIdShort: reader.readString(offsets[13]),
    versesTextArab: reader.readString(offsets[14]),
    versesTranslationId: reader.readString(offsets[15]),
  );
  return object;
}

P _surahDetailDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _surahDetailGetId(SurahDetail object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _surahDetailGetLinks(SurahDetail object) {
  return [];
}

void _surahDetailAttach(
    IsarCollection<dynamic> col, Id id, SurahDetail object) {}

extension SurahDetailQueryWhereSort
    on QueryBuilder<SurahDetail, SurahDetail, QWhere> {
  QueryBuilder<SurahDetail, SurahDetail, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SurahDetailQueryWhere
    on QueryBuilder<SurahDetail, SurahDetail, QWhereClause> {
  QueryBuilder<SurahDetail, SurahDetail, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SurahDetailQueryFilter
    on QueryBuilder<SurahDetail, SurahDetail, QFilterCondition> {
  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> nameLongEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> nameLongBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameLong',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> nameLongMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameLong',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameLong',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameLongIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameLong',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameShort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameShort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameShort',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameShortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameShort',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameTranslationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameTranslationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTranslationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTranslationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameTranslationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameTransliterationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameTransliterationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTransliterationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      nameTransliterationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameTransliterationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> numberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      numberOfVersesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfVerses',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      numberOfVersesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numberOfVerses',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      numberOfVersesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numberOfVerses',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      numberOfVersesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numberOfVerses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preBismillahAudioPrimary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preBismillahAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preBismillahAudioPrimary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preBismillahAudioPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahAudioPrimaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preBismillahAudioPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preBismillahTextArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preBismillahTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preBismillahTextArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preBismillahTextArab',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      preBismillahTextArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preBismillahTextArab',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relevationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'relevationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'relevationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relevationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      relevationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'relevationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> tafsirIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> tafsirIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tafsirId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tafsirId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition> tafsirIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tafsirId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tafsirId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      tafsirIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tafsirId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesAudioPrimary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versesAudioPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versesAudioPrimary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesAudioPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesAudioPrimaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versesAudioPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInQuranEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesNumberInQuran',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInQuranGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesNumberInQuran',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInQuranLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesNumberInQuran',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInQuranBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesNumberInQuran',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInSurahEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesNumberInSurah',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInSurahGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesNumberInSurah',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInSurahLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesNumberInSurah',
        value: value,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesNumberInSurahBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesNumberInSurah',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesTafsirIdShort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versesTafsirIdShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versesTafsirIdShort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTafsirIdShort',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTafsirIdShortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versesTafsirIdShort',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesTextArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versesTextArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versesTextArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTextArab',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTextArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versesTextArab',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versesTranslationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versesTranslationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versesTranslationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versesTranslationId',
        value: '',
      ));
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterFilterCondition>
      versesTranslationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versesTranslationId',
        value: '',
      ));
    });
  }
}

extension SurahDetailQueryObject
    on QueryBuilder<SurahDetail, SurahDetail, QFilterCondition> {}

extension SurahDetailQueryLinks
    on QueryBuilder<SurahDetail, SurahDetail, QFilterCondition> {}

extension SurahDetailQuerySortBy
    on QueryBuilder<SurahDetail, SurahDetail, QSortBy> {
  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNameLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNameLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNameShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNameShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByNameTranslationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTranslationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByNameTranslationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTranslationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByNameTransliterationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByNameTransliterationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByNumberOfVersesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByPreBismillahAudioPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahAudioPrimary', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByPreBismillahAudioPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahAudioPrimary', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByPreBismillahTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahTextArab', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByPreBismillahTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahTextArab', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByRelevationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relevationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByRelevationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relevationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByTafsirId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tafsirId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByTafsirIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tafsirId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesAudioPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesAudioPrimary', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesAudioPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesAudioPrimary', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesNumberInQuran() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInQuran', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesNumberInQuranDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInQuran', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesNumberInSurah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInSurah', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesNumberInSurahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInSurah', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesTafsirIdShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTafsirIdShort', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesTafsirIdShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTafsirIdShort', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> sortByVersesTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTextArab', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTextArab', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesTranslationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTranslationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      sortByVersesTranslationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTranslationId', Sort.desc);
    });
  }
}

extension SurahDetailQuerySortThenBy
    on QueryBuilder<SurahDetail, SurahDetail, QSortThenBy> {
  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNameLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNameLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNameShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNameShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByNameTranslationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTranslationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByNameTranslationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTranslationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByNameTransliterationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByNameTransliterationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByNumberOfVersesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByPreBismillahAudioPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahAudioPrimary', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByPreBismillahAudioPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahAudioPrimary', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByPreBismillahTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahTextArab', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByPreBismillahTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preBismillahTextArab', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByRelevationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relevationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByRelevationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relevationId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByTafsirId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tafsirId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByTafsirIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tafsirId', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesAudioPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesAudioPrimary', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesAudioPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesAudioPrimary', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesNumberInQuran() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInQuran', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesNumberInQuranDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInQuran', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesNumberInSurah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInSurah', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesNumberInSurahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesNumberInSurah', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesTafsirIdShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTafsirIdShort', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesTafsirIdShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTafsirIdShort', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy> thenByVersesTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTextArab', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTextArab', Sort.desc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesTranslationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTranslationId', Sort.asc);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QAfterSortBy>
      thenByVersesTranslationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versesTranslationId', Sort.desc);
    });
  }
}

extension SurahDetailQueryWhereDistinct
    on QueryBuilder<SurahDetail, SurahDetail, QDistinct> {
  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByNameLong(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameLong', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByNameShort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameShort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByNameTranslationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameTranslationId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByNameTransliterationId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameTransliterationId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfVerses');
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByPreBismillahAudioPrimary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preBismillahAudioPrimary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByPreBismillahTextArab({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preBismillahTextArab',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByRelevationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relevationId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByTafsirId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tafsirId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByVersesAudioPrimary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesAudioPrimary',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByVersesNumberInQuran() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesNumberInQuran');
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByVersesNumberInSurah() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesNumberInSurah');
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByVersesTafsirIdShort({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesTafsirIdShort',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct> distinctByVersesTextArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesTextArab',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SurahDetail, SurahDetail, QDistinct>
      distinctByVersesTranslationId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versesTranslationId',
          caseSensitive: caseSensitive);
    });
  }
}

extension SurahDetailQueryProperty
    on QueryBuilder<SurahDetail, SurahDetail, QQueryProperty> {
  QueryBuilder<SurahDetail, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations> nameLongProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameLong');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations> nameShortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameShort');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      nameTranslationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameTranslationId');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      nameTransliterationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameTransliterationId');
    });
  }

  QueryBuilder<SurahDetail, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<SurahDetail, int, QQueryOperations> numberOfVersesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfVerses');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      preBismillahAudioPrimaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preBismillahAudioPrimary');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      preBismillahTextArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preBismillahTextArab');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations> relevationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relevationId');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations> tafsirIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tafsirId');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      versesAudioPrimaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesAudioPrimary');
    });
  }

  QueryBuilder<SurahDetail, int, QQueryOperations>
      versesNumberInQuranProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesNumberInQuran');
    });
  }

  QueryBuilder<SurahDetail, int, QQueryOperations>
      versesNumberInSurahProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesNumberInSurah');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      versesTafsirIdShortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesTafsirIdShort');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations> versesTextArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesTextArab');
    });
  }

  QueryBuilder<SurahDetail, String, QQueryOperations>
      versesTranslationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versesTranslationId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurahDetail _$$_SurahDetailFromJson(Map<String, dynamic> json) =>
    _$_SurahDetail(
      number: json['number'] as int,
      numberOfVerses: json['numberOfVerses'] as int,
      nameShort: json['nameShort'] as String,
      nameLong: json['nameLong'] as String,
      nameTransliterationId: json['nameTransliterationId'] as String,
      nameTranslationId: json['nameTranslationId'] as String,
      relevationId: json['relevationId'] as String,
      tafsirId: json['tafsirId'] as String,
      preBismillahTextArab: json['preBismillahTextArab'] as String,
      preBismillahAudioPrimary: json['preBismillahAudioPrimary'] as String,
      versesTextArab: json['versesTextArab'] as String,
      versesNumberInQuran: json['versesNumberInQuran'] as int,
      versesNumberInSurah: json['versesNumberInSurah'] as int,
      versesTranslationId: json['versesTranslationId'] as String,
      versesAudioPrimary: json['versesAudioPrimary'] as String,
      versesTafsirIdShort: json['versesTafsirIdShort'] as String,
    );

Map<String, dynamic> _$$_SurahDetailToJson(_$_SurahDetail instance) =>
    <String, dynamic>{
      'number': instance.number,
      'numberOfVerses': instance.numberOfVerses,
      'nameShort': instance.nameShort,
      'nameLong': instance.nameLong,
      'nameTransliterationId': instance.nameTransliterationId,
      'nameTranslationId': instance.nameTranslationId,
      'relevationId': instance.relevationId,
      'tafsirId': instance.tafsirId,
      'preBismillahTextArab': instance.preBismillahTextArab,
      'preBismillahAudioPrimary': instance.preBismillahAudioPrimary,
      'versesTextArab': instance.versesTextArab,
      'versesNumberInQuran': instance.versesNumberInQuran,
      'versesNumberInSurah': instance.versesNumberInSurah,
      'versesTranslationId': instance.versesTranslationId,
      'versesAudioPrimary': instance.versesAudioPrimary,
      'versesTafsirIdShort': instance.versesTafsirIdShort,
    };
