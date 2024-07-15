// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTournamentDTOCollection on Isar {
  IsarCollection<TournamentDTO> get tournamentDTOs => this.collection();
}

const TournamentDTOSchema = CollectionSchema(
  name: r'TournamentDTO',
  id: 9174489554221228240,
  properties: {
    r'endDate': PropertySchema(
      id: 0,
      name: r'endDate',
      type: IsarType.dateTime,
    ),
    r'format': PropertySchema(
      id: 1,
      name: r'format',
      type: IsarType.byte,
      enumMap: _TournamentDTOformatEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'startDate': PropertySchema(
      id: 3,
      name: r'startDate',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _tournamentDTOEstimateSize,
  serialize: _tournamentDTOSerialize,
  deserialize: _tournamentDTODeserialize,
  deserializeProp: _tournamentDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'players': LinkSchema(
      id: -3427514012340430339,
      name: r'players',
      target: r'PlayerDTO',
      single: false,
      linkName: r'tournament',
    )
  },
  embeddedSchemas: {},
  getId: _tournamentDTOGetId,
  getLinks: _tournamentDTOGetLinks,
  attach: _tournamentDTOAttach,
  version: '3.1.0+1',
);

int _tournamentDTOEstimateSize(
  TournamentDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _tournamentDTOSerialize(
  TournamentDTO object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.endDate);
  writer.writeByte(offsets[1], object.format.index);
  writer.writeString(offsets[2], object.name);
  writer.writeDateTime(offsets[3], object.startDate);
}

TournamentDTO _tournamentDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TournamentDTO();
  object.endDate = reader.readDateTime(offsets[0]);
  object.format =
      _TournamentDTOformatValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          TournamentFormat.swiss;
  object.id = id;
  object.name = reader.readString(offsets[2]);
  object.startDate = reader.readDateTime(offsets[3]);
  return object;
}

P _tournamentDTODeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (_TournamentDTOformatValueEnumMap[reader.readByteOrNull(offset)] ??
          TournamentFormat.swiss) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TournamentDTOformatEnumValueMap = {
  'swiss': 0,
};
const _TournamentDTOformatValueEnumMap = {
  0: TournamentFormat.swiss,
};

Id _tournamentDTOGetId(TournamentDTO object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tournamentDTOGetLinks(TournamentDTO object) {
  return [object.players];
}

void _tournamentDTOAttach(
    IsarCollection<dynamic> col, Id id, TournamentDTO object) {
  object.id = id;
  object.players.attach(col, col.isar.collection<PlayerDTO>(), r'players', id);
}

extension TournamentDTOQueryWhereSort
    on QueryBuilder<TournamentDTO, TournamentDTO, QWhere> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TournamentDTOQueryWhere
    on QueryBuilder<TournamentDTO, TournamentDTO, QWhereClause> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterWhereClause> idBetween(
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

extension TournamentDTOQueryFilter
    on QueryBuilder<TournamentDTO, TournamentDTO, QFilterCondition> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      endDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      endDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      endDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      endDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      formatEqualTo(TournamentFormat value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'format',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      formatGreaterThan(
    TournamentFormat value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'format',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      formatLessThan(
    TournamentFormat value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'format',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      formatBetween(
    TournamentFormat lower,
    TournamentFormat upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'format',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      startDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      startDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      startDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      startDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TournamentDTOQueryObject
    on QueryBuilder<TournamentDTO, TournamentDTO, QFilterCondition> {}

extension TournamentDTOQueryLinks
    on QueryBuilder<TournamentDTO, TournamentDTO, QFilterCondition> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition> players(
      FilterQuery<PlayerDTO> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'players');
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'players', length, true, length, true);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'players', 0, true, 0, true);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'players', 0, false, 999999, true);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'players', 0, true, length, include);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'players', length, include, 999999, true);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterFilterCondition>
      playersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'players', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TournamentDTOQuerySortBy
    on QueryBuilder<TournamentDTO, TournamentDTO, QSortBy> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByFormat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'format', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByFormatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'format', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> sortByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy>
      sortByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }
}

extension TournamentDTOQuerySortThenBy
    on QueryBuilder<TournamentDTO, TournamentDTO, QSortThenBy> {
  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endDate', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByFormat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'format', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByFormatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'format', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy> thenByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QAfterSortBy>
      thenByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }
}

extension TournamentDTOQueryWhereDistinct
    on QueryBuilder<TournamentDTO, TournamentDTO, QDistinct> {
  QueryBuilder<TournamentDTO, TournamentDTO, QDistinct> distinctByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endDate');
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QDistinct> distinctByFormat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'format');
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TournamentDTO, TournamentDTO, QDistinct> distinctByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDate');
    });
  }
}

extension TournamentDTOQueryProperty
    on QueryBuilder<TournamentDTO, TournamentDTO, QQueryProperty> {
  QueryBuilder<TournamentDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TournamentDTO, DateTime, QQueryOperations> endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endDate');
    });
  }

  QueryBuilder<TournamentDTO, TournamentFormat, QQueryOperations>
      formatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'format');
    });
  }

  QueryBuilder<TournamentDTO, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TournamentDTO, DateTime, QQueryOperations> startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDate');
    });
  }
}
