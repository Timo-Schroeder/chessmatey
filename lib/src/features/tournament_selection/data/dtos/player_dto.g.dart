// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerDTOCollection on Isar {
  IsarCollection<PlayerDTO> get playerDTOs => this.collection();
}

const PlayerDTOSchema = CollectionSchema(
  name: r'PlayerDTO',
  id: -7602902402617793173,
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
      enumMap: _PlayerDTOtitleEnumValueMap,
    )
  },
  estimateSize: _playerDTOEstimateSize,
  serialize: _playerDTOSerialize,
  deserialize: _playerDTODeserialize,
  deserializeProp: _playerDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'tournament': LinkSchema(
      id: 4405582005063466989,
      name: r'tournament',
      target: r'TournamentDTO',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _playerDTOGetId,
  getLinks: _playerDTOGetLinks,
  attach: _playerDTOAttach,
  version: '3.1.0+1',
);

int _playerDTOEstimateSize(
  PlayerDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.club.length * 3;
  bytesCount += 3 + object.firstName.length * 3;
  bytesCount += 3 + object.lastName.length * 3;
  return bytesCount;
}

void _playerDTOSerialize(
  PlayerDTO object,
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

PlayerDTO _playerDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerDTO();
  object.club = reader.readString(offsets[0]);
  object.dateOfBirth = reader.readDateTime(offsets[1]);
  object.elo = reader.readLongOrNull(offsets[2]);
  object.firstName = reader.readString(offsets[3]);
  object.id = id;
  object.lastName = reader.readString(offsets[4]);
  object.nationalRating = reader.readLongOrNull(offsets[5]);
  object.title =
      _PlayerDTOtitleValueEnumMap[reader.readByteOrNull(offsets[6])] ??
          FideTitle.none;
  return object;
}

P _playerDTODeserializeProp<P>(
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
      return (_PlayerDTOtitleValueEnumMap[reader.readByteOrNull(offset)] ??
          FideTitle.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PlayerDTOtitleEnumValueMap = {
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
const _PlayerDTOtitleValueEnumMap = {
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

Id _playerDTOGetId(PlayerDTO object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerDTOGetLinks(PlayerDTO object) {
  return [object.tournament];
}

void _playerDTOAttach(IsarCollection<dynamic> col, Id id, PlayerDTO object) {
  object.id = id;
  object.tournament
      .attach(col, col.isar.collection<TournamentDTO>(), r'tournament', id);
}

extension PlayerDTOQueryWhereSort
    on QueryBuilder<PlayerDTO, PlayerDTO, QWhere> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerDTOQueryWhere
    on QueryBuilder<PlayerDTO, PlayerDTO, QWhereClause> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterWhereClause> idBetween(
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

extension PlayerDTOQueryFilter
    on QueryBuilder<PlayerDTO, PlayerDTO, QFilterCondition> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubEqualTo(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubGreaterThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubStartsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubEndsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubContains(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubMatches(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'club',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> clubIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'club',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> dateOfBirthEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> dateOfBirthLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> dateOfBirthBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'elo',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'elo',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloGreaterThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> eloBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameEqualTo(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameStartsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameEndsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameContains(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameMatches(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameEqualTo(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameGreaterThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameBetween(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameStartsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameEndsWith(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameContains(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameMatches(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
      nationalRatingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nationalRating',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
      nationalRatingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nationalRating',
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
      nationalRatingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nationalRating',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition>
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> titleEqualTo(
      FideTitle value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> titleBetween(
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

extension PlayerDTOQueryObject
    on QueryBuilder<PlayerDTO, PlayerDTO, QFilterCondition> {}

extension PlayerDTOQueryLinks
    on QueryBuilder<PlayerDTO, PlayerDTO, QFilterCondition> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> tournament(
      FilterQuery<TournamentDTO> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tournament');
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterFilterCondition> tournamentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tournament', 0, true, 0, true);
    });
  }
}

extension PlayerDTOQuerySortBy on QueryBuilder<PlayerDTO, PlayerDTO, QSortBy> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByEloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByNationalRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PlayerDTOQuerySortThenBy
    on QueryBuilder<PlayerDTO, PlayerDTO, QSortThenBy> {
  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'club', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByEloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elo', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByNationalRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationalRating', Sort.desc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension PlayerDTOQueryWhereDistinct
    on QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> {
  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByClub(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'club', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfBirth');
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByElo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elo');
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByNationalRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nationalRating');
    });
  }

  QueryBuilder<PlayerDTO, PlayerDTO, QDistinct> distinctByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title');
    });
  }
}

extension PlayerDTOQueryProperty
    on QueryBuilder<PlayerDTO, PlayerDTO, QQueryProperty> {
  QueryBuilder<PlayerDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerDTO, String, QQueryOperations> clubProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'club');
    });
  }

  QueryBuilder<PlayerDTO, DateTime, QQueryOperations> dateOfBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfBirth');
    });
  }

  QueryBuilder<PlayerDTO, int?, QQueryOperations> eloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elo');
    });
  }

  QueryBuilder<PlayerDTO, String, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<PlayerDTO, String, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<PlayerDTO, int?, QQueryOperations> nationalRatingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nationalRating');
    });
  }

  QueryBuilder<PlayerDTO, FideTitle, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
