// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_preference.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetAppPreferencesCollection on Isar {
  IsarCollection<AppPreferences> get appPreferences => this.collection();
}

const AppPreferencesSchema = CollectionSchema(
  name: r'AppPreferences',
  id: -1519881479793025673,
  properties: {
    r'colorSchemeSeed': PropertySchema(
      id: 0,
      name: r'colorSchemeSeed',
      type: IsarType.string,
    ),
    r'fontFamily': PropertySchema(
      id: 1,
      name: r'fontFamily',
      type: IsarType.string,
    ),
    r'isDarkMode': PropertySchema(
      id: 2,
      name: r'isDarkMode',
      type: IsarType.bool,
    ),
    r'isSystemThemeMode': PropertySchema(
      id: 3,
      name: r'isSystemThemeMode',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 4,
      name: r'language',
      type: IsarType.string,
    )
  },
  estimateSize: _appPreferencesEstimateSize,
  serialize: _appPreferencesSerialize,
  deserialize: _appPreferencesDeserialize,
  deserializeProp: _appPreferencesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appPreferencesGetId,
  getLinks: _appPreferencesGetLinks,
  attach: _appPreferencesAttach,
  version: '3.0.5',
);

int _appPreferencesEstimateSize(
  AppPreferences object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.colorSchemeSeed.length * 3;
  {
    final value = object.fontFamily;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.language.length * 3;
  return bytesCount;
}

void _appPreferencesSerialize(
  AppPreferences object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.colorSchemeSeed);
  writer.writeString(offsets[1], object.fontFamily);
  writer.writeBool(offsets[2], object.isDarkMode);
  writer.writeBool(offsets[3], object.isSystemThemeMode);
  writer.writeString(offsets[4], object.language);
}

AppPreferences _appPreferencesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppPreferences();
  object.colorSchemeSeed = reader.readString(offsets[0]);
  object.fontFamily = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.isDarkMode = reader.readBool(offsets[2]);
  object.isSystemThemeMode = reader.readBool(offsets[3]);
  object.language = reader.readString(offsets[4]);
  return object;
}

P _appPreferencesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appPreferencesGetId(AppPreferences object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _appPreferencesGetLinks(AppPreferences object) {
  return [];
}

void _appPreferencesAttach(
    IsarCollection<dynamic> col, Id id, AppPreferences object) {
  object.id = id;
}

extension AppPreferencesQueryWhereSort
    on QueryBuilder<AppPreferences, AppPreferences, QWhere> {
  QueryBuilder<AppPreferences, AppPreferences, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppPreferencesQueryWhere
    on QueryBuilder<AppPreferences, AppPreferences, QWhereClause> {
  QueryBuilder<AppPreferences, AppPreferences, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AppPreferences, AppPreferences, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterWhereClause> idBetween(
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

extension AppPreferencesQueryFilter
    on QueryBuilder<AppPreferences, AppPreferences, QFilterCondition> {
  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorSchemeSeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorSchemeSeed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorSchemeSeed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorSchemeSeed',
        value: '',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      colorSchemeSeedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorSchemeSeed',
        value: '',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fontFamily',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fontFamily',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fontFamily',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fontFamily',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fontFamily',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFamily',
        value: '',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      fontFamilyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fontFamily',
        value: '',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
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

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      isDarkModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDarkMode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      isSystemThemeModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSystemThemeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }
}

extension AppPreferencesQueryObject
    on QueryBuilder<AppPreferences, AppPreferences, QFilterCondition> {}

extension AppPreferencesQueryLinks
    on QueryBuilder<AppPreferences, AppPreferences, QFilterCondition> {}

extension AppPreferencesQuerySortBy
    on QueryBuilder<AppPreferences, AppPreferences, QSortBy> {
  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByColorSchemeSeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorSchemeSeed', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByColorSchemeSeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorSchemeSeed', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByFontFamily() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFamily', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByFontFamilyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFamily', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkMode', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByIsDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkMode', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByIsSystemThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSystemThemeMode', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByIsSystemThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSystemThemeMode', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }
}

extension AppPreferencesQuerySortThenBy
    on QueryBuilder<AppPreferences, AppPreferences, QSortThenBy> {
  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByColorSchemeSeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorSchemeSeed', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByColorSchemeSeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorSchemeSeed', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByFontFamily() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFamily', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByFontFamilyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFamily', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkMode', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByIsDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDarkMode', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByIsSystemThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSystemThemeMode', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByIsSystemThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSystemThemeMode', Sort.desc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }
}

extension AppPreferencesQueryWhereDistinct
    on QueryBuilder<AppPreferences, AppPreferences, QDistinct> {
  QueryBuilder<AppPreferences, AppPreferences, QDistinct>
      distinctByColorSchemeSeed({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorSchemeSeed',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QDistinct> distinctByFontFamily(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fontFamily', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QDistinct>
      distinctByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDarkMode');
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QDistinct>
      distinctByIsSystemThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSystemThemeMode');
    });
  }

  QueryBuilder<AppPreferences, AppPreferences, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }
}

extension AppPreferencesQueryProperty
    on QueryBuilder<AppPreferences, AppPreferences, QQueryProperty> {
  QueryBuilder<AppPreferences, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppPreferences, String, QQueryOperations>
      colorSchemeSeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorSchemeSeed');
    });
  }

  QueryBuilder<AppPreferences, String?, QQueryOperations> fontFamilyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fontFamily');
    });
  }

  QueryBuilder<AppPreferences, bool, QQueryOperations> isDarkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDarkMode');
    });
  }

  QueryBuilder<AppPreferences, bool, QQueryOperations>
      isSystemThemeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSystemThemeMode');
    });
  }

  QueryBuilder<AppPreferences, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }
}
