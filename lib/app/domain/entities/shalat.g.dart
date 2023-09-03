// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shalat.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShalatCollection on Isar {
  IsarCollection<Shalat> get shalats => this.collection();
}

const ShalatSchema = CollectionSchema(
  name: r'Shalat',
  id: -872297033408941195,
  properties: {
    r'dateReadable': PropertySchema(
      id: 0,
      name: r'dateReadable',
      type: IsarType.string,
    ),
    r'dateTimestamp': PropertySchema(
      id: 1,
      name: r'dateTimestamp',
      type: IsarType.string,
    ),
    r'metaLatitude': PropertySchema(
      id: 2,
      name: r'metaLatitude',
      type: IsarType.string,
    ),
    r'metaLongitude': PropertySchema(
      id: 3,
      name: r'metaLongitude',
      type: IsarType.string,
    ),
    r'metaTimezone': PropertySchema(
      id: 4,
      name: r'metaTimezone',
      type: IsarType.string,
    ),
    r'timingsAsr': PropertySchema(
      id: 5,
      name: r'timingsAsr',
      type: IsarType.string,
    ),
    r'timingsDhuhr': PropertySchema(
      id: 6,
      name: r'timingsDhuhr',
      type: IsarType.string,
    ),
    r'timingsFajr': PropertySchema(
      id: 7,
      name: r'timingsFajr',
      type: IsarType.string,
    ),
    r'timingsIsha': PropertySchema(
      id: 8,
      name: r'timingsIsha',
      type: IsarType.string,
    ),
    r'timingsMaghrib': PropertySchema(
      id: 9,
      name: r'timingsMaghrib',
      type: IsarType.string,
    )
  },
  estimateSize: _shalatEstimateSize,
  serialize: _shalatSerialize,
  deserialize: _shalatDeserialize,
  deserializeProp: _shalatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _shalatGetId,
  getLinks: _shalatGetLinks,
  attach: _shalatAttach,
  version: '3.1.0+1',
);

int _shalatEstimateSize(
  Shalat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dateReadable;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dateTimestamp;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.metaLatitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.metaLongitude;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.metaTimezone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timingsAsr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timingsDhuhr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timingsFajr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timingsIsha;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timingsMaghrib;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _shalatSerialize(
  Shalat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dateReadable);
  writer.writeString(offsets[1], object.dateTimestamp);
  writer.writeString(offsets[2], object.metaLatitude);
  writer.writeString(offsets[3], object.metaLongitude);
  writer.writeString(offsets[4], object.metaTimezone);
  writer.writeString(offsets[5], object.timingsAsr);
  writer.writeString(offsets[6], object.timingsDhuhr);
  writer.writeString(offsets[7], object.timingsFajr);
  writer.writeString(offsets[8], object.timingsIsha);
  writer.writeString(offsets[9], object.timingsMaghrib);
}

Shalat _shalatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Shalat(
    dateReadable: reader.readStringOrNull(offsets[0]),
    dateTimestamp: reader.readStringOrNull(offsets[1]),
    metaLatitude: reader.readStringOrNull(offsets[2]),
    metaLongitude: reader.readStringOrNull(offsets[3]),
    metaTimezone: reader.readStringOrNull(offsets[4]),
    timingsAsr: reader.readStringOrNull(offsets[5]),
    timingsDhuhr: reader.readStringOrNull(offsets[6]),
    timingsFajr: reader.readStringOrNull(offsets[7]),
    timingsIsha: reader.readStringOrNull(offsets[8]),
    timingsMaghrib: reader.readStringOrNull(offsets[9]),
  );
  return object;
}

P _shalatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shalatGetId(Shalat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shalatGetLinks(Shalat object) {
  return [];
}

void _shalatAttach(IsarCollection<dynamic> col, Id id, Shalat object) {}

extension ShalatQueryWhereSort on QueryBuilder<Shalat, Shalat, QWhere> {
  QueryBuilder<Shalat, Shalat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShalatQueryWhere on QueryBuilder<Shalat, Shalat, QWhereClause> {
  QueryBuilder<Shalat, Shalat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Shalat, Shalat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterWhereClause> idBetween(
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

extension ShalatQueryFilter on QueryBuilder<Shalat, Shalat, QFilterCondition> {
  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateReadable',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateReadable',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateReadable',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateReadable',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateReadable',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateReadable',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateReadableIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateReadable',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTimestamp',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTimestamp',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTimestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateTimestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateTimestamp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> dateTimestampIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTimestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition>
      dateTimestampIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateTimestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'metaLatitude',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'metaLatitude',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'metaLatitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'metaLatitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'metaLatitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaLatitude',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLatitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'metaLatitude',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'metaLongitude',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'metaLongitude',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'metaLongitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'metaLongitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'metaLongitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaLongitudeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaLongitude',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition>
      metaLongitudeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'metaLongitude',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'metaTimezone',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'metaTimezone',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'metaTimezone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'metaTimezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'metaTimezone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'metaTimezone',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> metaTimezoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'metaTimezone',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timingsAsr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timingsAsr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timingsAsr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timingsAsr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timingsAsr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsAsr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsAsrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timingsAsr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timingsDhuhr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timingsDhuhr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timingsDhuhr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timingsDhuhr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timingsDhuhr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsDhuhr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsDhuhrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timingsDhuhr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timingsFajr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timingsFajr',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timingsFajr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timingsFajr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timingsFajr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsFajr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsFajrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timingsFajr',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timingsIsha',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timingsIsha',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timingsIsha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timingsIsha',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timingsIsha',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsIsha',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsIshaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timingsIsha',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timingsMaghrib',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition>
      timingsMaghribIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timingsMaghrib',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timingsMaghrib',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timingsMaghrib',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timingsMaghrib',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition> timingsMaghribIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timingsMaghrib',
        value: '',
      ));
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterFilterCondition>
      timingsMaghribIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timingsMaghrib',
        value: '',
      ));
    });
  }
}

extension ShalatQueryObject on QueryBuilder<Shalat, Shalat, QFilterCondition> {}

extension ShalatQueryLinks on QueryBuilder<Shalat, Shalat, QFilterCondition> {}

extension ShalatQuerySortBy on QueryBuilder<Shalat, Shalat, QSortBy> {
  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByDateReadable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateReadable', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByDateReadableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateReadable', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByDateTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimestamp', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByDateTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimestamp', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLatitude', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLatitude', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLongitude', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLongitude', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaTimezone', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByMetaTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaTimezone', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsAsr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsAsr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsAsrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsAsr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsDhuhr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsDhuhr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsDhuhrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsDhuhr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsFajr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsFajr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsFajrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsFajr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsIsha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsIsha', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsIshaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsIsha', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsMaghrib() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsMaghrib', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> sortByTimingsMaghribDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsMaghrib', Sort.desc);
    });
  }
}

extension ShalatQuerySortThenBy on QueryBuilder<Shalat, Shalat, QSortThenBy> {
  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByDateReadable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateReadable', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByDateReadableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateReadable', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByDateTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimestamp', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByDateTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimestamp', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLatitude', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLatitude', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLongitude', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaLongitude', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaTimezone', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByMetaTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'metaTimezone', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsAsr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsAsr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsAsrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsAsr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsDhuhr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsDhuhr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsDhuhrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsDhuhr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsFajr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsFajr', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsFajrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsFajr', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsIsha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsIsha', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsIshaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsIsha', Sort.desc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsMaghrib() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsMaghrib', Sort.asc);
    });
  }

  QueryBuilder<Shalat, Shalat, QAfterSortBy> thenByTimingsMaghribDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timingsMaghrib', Sort.desc);
    });
  }
}

extension ShalatQueryWhereDistinct on QueryBuilder<Shalat, Shalat, QDistinct> {
  QueryBuilder<Shalat, Shalat, QDistinct> distinctByDateReadable(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateReadable', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByDateTimestamp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTimestamp',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByMetaLatitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metaLatitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByMetaLongitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metaLongitude',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByMetaTimezone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'metaTimezone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByTimingsAsr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timingsAsr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByTimingsDhuhr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timingsDhuhr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByTimingsFajr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timingsFajr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByTimingsIsha(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timingsIsha', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Shalat, Shalat, QDistinct> distinctByTimingsMaghrib(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timingsMaghrib',
          caseSensitive: caseSensitive);
    });
  }
}

extension ShalatQueryProperty on QueryBuilder<Shalat, Shalat, QQueryProperty> {
  QueryBuilder<Shalat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> dateReadableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateReadable');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> dateTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTimestamp');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> metaLatitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metaLatitude');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> metaLongitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metaLongitude');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> metaTimezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'metaTimezone');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> timingsAsrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timingsAsr');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> timingsDhuhrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timingsDhuhr');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> timingsFajrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timingsFajr');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> timingsIshaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timingsIsha');
    });
  }

  QueryBuilder<Shalat, String?, QQueryOperations> timingsMaghribProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timingsMaghrib');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shalat _$$_ShalatFromJson(Map<String, dynamic> json) => _$_Shalat(
      timingsFajr: json['timingsFajr'] as String?,
      timingsDhuhr: json['timingsDhuhr'] as String?,
      timingsAsr: json['timingsAsr'] as String?,
      timingsMaghrib: json['timingsMaghrib'] as String?,
      timingsIsha: json['timingsIsha'] as String?,
      dateTimestamp: json['dateTimestamp'] as String?,
      dateReadable: json['dateReadable'] as String?,
      metaLatitude: json['metaLatitude'] as String?,
      metaLongitude: json['metaLongitude'] as String?,
      metaTimezone: json['metaTimezone'] as String?,
    );

Map<String, dynamic> _$$_ShalatToJson(_$_Shalat instance) => <String, dynamic>{
      'timingsFajr': instance.timingsFajr,
      'timingsDhuhr': instance.timingsDhuhr,
      'timingsAsr': instance.timingsAsr,
      'timingsMaghrib': instance.timingsMaghrib,
      'timingsIsha': instance.timingsIsha,
      'dateTimestamp': instance.dateTimestamp,
      'dateReadable': instance.dateReadable,
      'metaLatitude': instance.metaLatitude,
      'metaLongitude': instance.metaLongitude,
      'metaTimezone': instance.metaTimezone,
    };
