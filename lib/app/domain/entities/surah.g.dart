// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSurahCollection on Isar {
  IsarCollection<Surah> get surahs => this.collection();
}

const SurahSchema = CollectionSchema(
  name: r'Surah',
  id: -5819800798527960797,
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
    r'nameTransliterationId': PropertySchema(
      id: 2,
      name: r'nameTransliterationId',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 3,
      name: r'number',
      type: IsarType.long,
    ),
    r'numberOfVerses': PropertySchema(
      id: 4,
      name: r'numberOfVerses',
      type: IsarType.long,
    ),
    r'revelationId': PropertySchema(
      id: 5,
      name: r'revelationId',
      type: IsarType.string,
    )
  },
  estimateSize: _surahEstimateSize,
  serialize: _surahSerialize,
  deserialize: _surahDeserialize,
  deserializeProp: _surahDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _surahGetId,
  getLinks: _surahGetLinks,
  attach: _surahAttach,
  version: '3.1.0+1',
);

int _surahEstimateSize(
  Surah object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nameLong.length * 3;
  bytesCount += 3 + object.nameShort.length * 3;
  bytesCount += 3 + object.nameTransliterationId.length * 3;
  bytesCount += 3 + object.revelationId.length * 3;
  return bytesCount;
}

void _surahSerialize(
  Surah object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.nameLong);
  writer.writeString(offsets[1], object.nameShort);
  writer.writeString(offsets[2], object.nameTransliterationId);
  writer.writeLong(offsets[3], object.number);
  writer.writeLong(offsets[4], object.numberOfVerses);
  writer.writeString(offsets[5], object.revelationId);
}

Surah _surahDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Surah(
    nameLong: reader.readString(offsets[0]),
    nameShort: reader.readString(offsets[1]),
    nameTransliterationId: reader.readString(offsets[2]),
    number: reader.readLong(offsets[3]),
    numberOfVerses: reader.readLong(offsets[4]),
    revelationId: reader.readString(offsets[5]),
  );
  return object;
}

P _surahDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _surahGetId(Surah object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _surahGetLinks(Surah object) {
  return [];
}

void _surahAttach(IsarCollection<dynamic> col, Id id, Surah object) {}

extension SurahQueryWhereSort on QueryBuilder<Surah, Surah, QWhere> {
  QueryBuilder<Surah, Surah, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SurahQueryWhere on QueryBuilder<Surah, Surah, QWhereClause> {
  QueryBuilder<Surah, Surah, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Surah, Surah, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Surah, Surah, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Surah, Surah, QAfterWhereClause> idBetween(
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

extension SurahQueryFilter on QueryBuilder<Surah, Surah, QFilterCondition> {
  QueryBuilder<Surah, Surah, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongEqualTo(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongGreaterThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongLessThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongBetween(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongStartsWith(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongEndsWith(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameLong',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongMatches(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameLong',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameLongIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameLong',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortEqualTo(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortGreaterThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortLessThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortBetween(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortStartsWith(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortEndsWith(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameShort',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameShort',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameShort',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> nameShortIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameShort',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
      nameTransliterationIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameTransliterationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
      nameTransliterationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameTransliterationId',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition>
      nameTransliterationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameTransliterationId',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberGreaterThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberLessThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberBetween(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberOfVersesEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numberOfVerses',
        value: value,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberOfVersesGreaterThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberOfVersesLessThan(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> numberOfVersesBetween(
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

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'revelationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'revelationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'revelationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revelationId',
        value: '',
      ));
    });
  }

  QueryBuilder<Surah, Surah, QAfterFilterCondition> revelationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'revelationId',
        value: '',
      ));
    });
  }
}

extension SurahQueryObject on QueryBuilder<Surah, Surah, QFilterCondition> {}

extension SurahQueryLinks on QueryBuilder<Surah, Surah, QFilterCondition> {}

extension SurahQuerySortBy on QueryBuilder<Surah, Surah, QSortBy> {
  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameTransliterationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNameTransliterationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByNumberOfVersesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByRevelationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationId', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> sortByRevelationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationId', Sort.desc);
    });
  }
}

extension SurahQuerySortThenBy on QueryBuilder<Surah, Surah, QSortThenBy> {
  QueryBuilder<Surah, Surah, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameLong() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameLongDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameLong', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameShort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameShort', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameTransliterationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNameTransliterationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameTransliterationId', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByNumberOfVersesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numberOfVerses', Sort.desc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByRevelationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationId', Sort.asc);
    });
  }

  QueryBuilder<Surah, Surah, QAfterSortBy> thenByRevelationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revelationId', Sort.desc);
    });
  }
}

extension SurahQueryWhereDistinct on QueryBuilder<Surah, Surah, QDistinct> {
  QueryBuilder<Surah, Surah, QDistinct> distinctByNameLong(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameLong', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surah, Surah, QDistinct> distinctByNameShort(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameShort', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surah, Surah, QDistinct> distinctByNameTransliterationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameTransliterationId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Surah, Surah, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<Surah, Surah, QDistinct> distinctByNumberOfVerses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numberOfVerses');
    });
  }

  QueryBuilder<Surah, Surah, QDistinct> distinctByRevelationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'revelationId', caseSensitive: caseSensitive);
    });
  }
}

extension SurahQueryProperty on QueryBuilder<Surah, Surah, QQueryProperty> {
  QueryBuilder<Surah, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Surah, String, QQueryOperations> nameLongProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameLong');
    });
  }

  QueryBuilder<Surah, String, QQueryOperations> nameShortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameShort');
    });
  }

  QueryBuilder<Surah, String, QQueryOperations>
      nameTransliterationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameTransliterationId');
    });
  }

  QueryBuilder<Surah, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<Surah, int, QQueryOperations> numberOfVersesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numberOfVerses');
    });
  }

  QueryBuilder<Surah, String, QQueryOperations> revelationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'revelationId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Surah _$$_SurahFromJson(Map<String, dynamic> json) => _$_Surah(
      number: json['number'] as int,
      numberOfVerses: json['numberOfVerses'] as int,
      nameShort: json['nameShort'] as String,
      nameLong: json['nameLong'] as String,
      nameTransliterationId: json['nameTransliterationId'] as String,
      revelationId: json['revelationId'] as String,
    );

Map<String, dynamic> _$$_SurahToJson(_$_Surah instance) => <String, dynamic>{
      'number': instance.number,
      'numberOfVerses': instance.numberOfVerses,
      'nameShort': instance.nameShort,
      'nameLong': instance.nameLong,
      'nameTransliterationId': instance.nameTransliterationId,
      'revelationId': instance.revelationId,
    };
