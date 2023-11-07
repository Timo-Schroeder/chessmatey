// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerDtoCollection on Isar {
  IsarCollection<PlayerDto> get playerDtos => this.collection();
}

const PlayerDtoSchema = CollectionSchema(
  name: r'PlayerDto',
  id: -3607826258000411192,
  properties: {
    r'club': PropertySchema(
      id: 0,
      name: r'club',
      type: IsarType.string,
    ),
    r'dateOfBirth': PropertySchema(
      id: 1,
      name: r'dateOfBirth',
      type: IsarType.dateTime,
    ),
    r'elo': PropertySchema(
      id: 2,
      name: r'elo',
      type: IsarType.long,
    ),
    r'firstName': PropertySchema(
      id: 3,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'lastName': PropertySchema(
      id: 4,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'nationalRating': PropertySchema(
      id: 5,
      name: r'nationalRating',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.byte,
      enumMap: _PlayerDtotitleEnumValueMap,
    )
  },
  estimateSize: _playerDtoEstimateSize,
  serialize: _playerDtoSerialize,
  deserialize: _playerDtoDeserialize,
  deserializeProp: _playerDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'tournament': LinkSchema(
      id: 6834500612815025825,
      name: r'tournament',
      target: r'TournamentDto',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _playerDtoGetId,
  getLinks: _playerDtoGetLinks,
  attach: _playerDtoAttach,
  version: '3.1.0+1',
);

int _playerDtoEstimateSize(
  PlayerDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.club.length * 3;
  bytesCount += 3 + object.firstName.length * 3;
  bytesCount += 3 + object.lastName.length * 3;
  return bytesCount;
}

void _playerDtoSerialize(
  PlayerDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.club);
  writer.writeDateTime(offsets[1], object.dateOfBirth);
  writer.writeLong(offsets[2], object.elo);
  writer.writeString(offsets[3], object.firstName);
  writer.writeString(offsets[4], object.lastName);
  writer.writeLong(offsets[5], object.nationalRating);
  writer.writeByte(offsets[6], object.title.index);
}

PlayerDto _playerDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerDto();
  object.club = reader.readString(offsets[0]);
  object.dateOfBirth = reader.readDateTime(offsets[1]);
  object.elo = reader.readLongOrNull(offsets[2]);
  object.firstName = reader.readString(offsets[3]);
  object.id = id;
  object.lastName = reader.readString(offsets[4]);
  object.nationalRating = reader.readLongOrNull(offsets[5]);
  object.title =
      _PlayerDtotitleValueEnumMap[reader.readByteOrNull(offsets[6])] ??
          FideTitle.none;
  return object;
}

P _playerDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (_PlayerDtotitleValueEnumMap[reader.readByteOrNull(offset)] ??
          FideTitle.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PlayerDtotitleEnumValueMap = {
  'none': 0,
  'cm': 1,
  'fm': 2,
  'im': 3,
  'gm': 4,
  'wcm': 5,
  'wfm': 6,
  'wim': 7,
  'wgm': 8,
};
const _PlayerDtotitleValueEnumMap = {
  0: FideTitle.none,
  1: FideTitle.cm,
  2: FideTitle.fm,
  3: FideTitle.im,
  4: FideTitle.gm,
  5: FideTitle.wcm,
  6: FideTitle.wfm,
  7: FideTitle.wim,
  8: FideTitle.wgm,
};

Id _playerDtoGetId(PlayerDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerDtoGetLinks(PlayerDto object) {
  return [object.tournament];
}

void _playerDtoAttach(IsarCollection<dynamic> col, Id id, PlayerDto object) {
  object.id = id;
  object.tournament
      .attach(col, col.isar.collection<TournamentDto>(), r'tournament', id);
}

extension PlayerDtoQueryWhereSort
    on QueryBuilder<PlayerDto, PlayerDto, QWhere> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerDtoQueryWhere
    on QueryBuilder<PlayerDto, PlayerDto, QWhereClause> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PlayerDto, PlayerDto, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterWhereClause> idBetween(
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

extension PlayerDtoQueryFilter
    on QueryBuilder<PlayerDto, PlayerDto, QFilterCondition> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'club',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'club',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'club',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'club',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> clubIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'club',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> dateOfBirthEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      dateOfBirthGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> dateOfBirthLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> dateOfBirthBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOfBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'elo',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'elo',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'elo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'elo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> eloBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'elo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      firstNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nationalRating',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nationalRating',
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nationalRating',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nationalRating',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nationalRating',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition>
      nationalRatingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nationalRating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> titleEqualTo(
      FideTitle value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> titleGreaterThan(
    FideTitle value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> titleLessThan(
    FideTitle value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> titleBetween(
    FideTitle lower,
    FideTitle upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PlayerDtoQueryObject
    on QueryBuilder<PlayerDto, PlayerDto, QFilterCondition> {}

extension PlayerDtoQueryLinks
    on QueryBuilder<PlayerDto, PlayerDto, QFilterCondition> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> tournament(
      FilterQuery<TournamentDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tournament');
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterFilterCondition> tournamentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tournament', 0, true, 0, true);
    });
  }
}

extension PlayerDtoQuerySortBy on QueryBuilder<PlayerDto, PlayerDto, QSortBy> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByEloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByNationalRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PlayerDtoQuerySortThenBy
    on QueryBuilder<PlayerDto, PlayerDto, QSortThenBy> {
  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByEloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByNationalRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.desc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PlayerDtoQueryWhereDistinct
    on QueryBuilder<PlayerDto, PlayerDto, QDistinct> {
  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByClub(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'club', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfBirth');
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elo');
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nationalRating');
    });
  }

  QueryBuilder<PlayerDto, PlayerDto, QDistinct> distinctByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title');
    });
  }
}

extension PlayerDtoQueryProperty
    on QueryBuilder<PlayerDto, PlayerDto, QQueryProperty> {
  QueryBuilder<PlayerDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerDto, String, QQueryOperations> clubProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'club');
    });
  }

  QueryBuilder<PlayerDto, DateTime, QQueryOperations> dateOfBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfBirth');
    });
  }

  QueryBuilder<PlayerDto, int?, QQueryOperations> eloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elo');
    });
  }

  QueryBuilder<PlayerDto, String, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<PlayerDto, String, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<PlayerDto, int?, QQueryOperations> nationalRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nationalRating');
    });
  }

  QueryBuilder<PlayerDto, FideTitle, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
