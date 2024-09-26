// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $FlipcardsTable extends Flipcards
    with TableInfo<$FlipcardsTable, Flipcard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlipcardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _backContentMeta =
      const VerificationMeta('backContent');
  @override
  late final GeneratedColumn<String> backContent = GeneratedColumn<String>(
      'back_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _frontContentMeta =
      const VerificationMeta('frontContent');
  @override
  late final GeneratedColumn<String> frontContent = GeneratedColumn<String>(
      'front_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 36, maxTextLength: 36),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [backContent, frontContent, id, tags];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flipcards';
  @override
  VerificationContext validateIntegrity(Insertable<Flipcard> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('back_content')) {
      context.handle(
          _backContentMeta,
          backContent.isAcceptableOrUnknown(
              data['back_content']!, _backContentMeta));
    } else if (isInserting) {
      context.missing(_backContentMeta);
    }
    if (data.containsKey('front_content')) {
      context.handle(
          _frontContentMeta,
          frontContent.isAcceptableOrUnknown(
              data['front_content']!, _frontContentMeta));
    } else if (isInserting) {
      context.missing(_frontContentMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Flipcard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Flipcard(
      backContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_content'])!,
      frontContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_content'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
    );
  }

  @override
  $FlipcardsTable createAlias(String alias) {
    return $FlipcardsTable(attachedDatabase, alias);
  }
}

class Flipcard extends DataClass implements Insertable<Flipcard> {
  final String backContent;
  final String frontContent;
  final String id;
  final String? tags;
  const Flipcard(
      {required this.backContent,
      required this.frontContent,
      required this.id,
      this.tags});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['back_content'] = Variable<String>(backContent);
    map['front_content'] = Variable<String>(frontContent);
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    return map;
  }

  FlipcardsCompanion toCompanion(bool nullToAbsent) {
    return FlipcardsCompanion(
      backContent: Value(backContent),
      frontContent: Value(frontContent),
      id: Value(id),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
    );
  }

  factory Flipcard.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Flipcard(
      backContent: serializer.fromJson<String>(json['backContent']),
      frontContent: serializer.fromJson<String>(json['frontContent']),
      id: serializer.fromJson<String>(json['id']),
      tags: serializer.fromJson<String?>(json['tags']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'backContent': serializer.toJson<String>(backContent),
      'frontContent': serializer.toJson<String>(frontContent),
      'id': serializer.toJson<String>(id),
      'tags': serializer.toJson<String?>(tags),
    };
  }

  Flipcard copyWith(
          {String? backContent,
          String? frontContent,
          String? id,
          Value<String?> tags = const Value.absent()}) =>
      Flipcard(
        backContent: backContent ?? this.backContent,
        frontContent: frontContent ?? this.frontContent,
        id: id ?? this.id,
        tags: tags.present ? tags.value : this.tags,
      );
  Flipcard copyWithCompanion(FlipcardsCompanion data) {
    return Flipcard(
      backContent:
          data.backContent.present ? data.backContent.value : this.backContent,
      frontContent: data.frontContent.present
          ? data.frontContent.value
          : this.frontContent,
      id: data.id.present ? data.id.value : this.id,
      tags: data.tags.present ? data.tags.value : this.tags,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Flipcard(')
          ..write('backContent: $backContent, ')
          ..write('frontContent: $frontContent, ')
          ..write('id: $id, ')
          ..write('tags: $tags')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(backContent, frontContent, id, tags);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Flipcard &&
          other.backContent == this.backContent &&
          other.frontContent == this.frontContent &&
          other.id == this.id &&
          other.tags == this.tags);
}

class FlipcardsCompanion extends UpdateCompanion<Flipcard> {
  final Value<String> backContent;
  final Value<String> frontContent;
  final Value<String> id;
  final Value<String?> tags;
  final Value<int> rowid;
  const FlipcardsCompanion({
    this.backContent = const Value.absent(),
    this.frontContent = const Value.absent(),
    this.id = const Value.absent(),
    this.tags = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FlipcardsCompanion.insert({
    required String backContent,
    required String frontContent,
    required String id,
    this.tags = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : backContent = Value(backContent),
        frontContent = Value(frontContent),
        id = Value(id);
  static Insertable<Flipcard> custom({
    Expression<String>? backContent,
    Expression<String>? frontContent,
    Expression<String>? id,
    Expression<String>? tags,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (backContent != null) 'back_content': backContent,
      if (frontContent != null) 'front_content': frontContent,
      if (id != null) 'id': id,
      if (tags != null) 'tags': tags,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FlipcardsCompanion copyWith(
      {Value<String>? backContent,
      Value<String>? frontContent,
      Value<String>? id,
      Value<String?>? tags,
      Value<int>? rowid}) {
    return FlipcardsCompanion(
      backContent: backContent ?? this.backContent,
      frontContent: frontContent ?? this.frontContent,
      id: id ?? this.id,
      tags: tags ?? this.tags,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (backContent.present) {
      map['back_content'] = Variable<String>(backContent.value);
    }
    if (frontContent.present) {
      map['front_content'] = Variable<String>(frontContent.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlipcardsCompanion(')
          ..write('backContent: $backContent, ')
          ..write('frontContent: $frontContent, ')
          ..write('id: $id, ')
          ..write('tags: $tags, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $FlipcardsTable flipcards = $FlipcardsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [flipcards];
}

typedef $$FlipcardsTableCreateCompanionBuilder = FlipcardsCompanion Function({
  required String backContent,
  required String frontContent,
  required String id,
  Value<String?> tags,
  Value<int> rowid,
});
typedef $$FlipcardsTableUpdateCompanionBuilder = FlipcardsCompanion Function({
  Value<String> backContent,
  Value<String> frontContent,
  Value<String> id,
  Value<String?> tags,
  Value<int> rowid,
});

class $$FlipcardsTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $FlipcardsTable,
    Flipcard,
    $$FlipcardsTableFilterComposer,
    $$FlipcardsTableOrderingComposer,
    $$FlipcardsTableCreateCompanionBuilder,
    $$FlipcardsTableUpdateCompanionBuilder> {
  $$FlipcardsTableTableManager(_$LocalDatabase db, $FlipcardsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FlipcardsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FlipcardsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> backContent = const Value.absent(),
            Value<String> frontContent = const Value.absent(),
            Value<String> id = const Value.absent(),
            Value<String?> tags = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FlipcardsCompanion(
            backContent: backContent,
            frontContent: frontContent,
            id: id,
            tags: tags,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String backContent,
            required String frontContent,
            required String id,
            Value<String?> tags = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FlipcardsCompanion.insert(
            backContent: backContent,
            frontContent: frontContent,
            id: id,
            tags: tags,
            rowid: rowid,
          ),
        ));
}

class $$FlipcardsTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $FlipcardsTable> {
  $$FlipcardsTableFilterComposer(super.$state);
  ColumnFilters<String> get backContent => $state.composableBuilder(
      column: $state.table.backContent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get frontContent => $state.composableBuilder(
      column: $state.table.frontContent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tags => $state.composableBuilder(
      column: $state.table.tags,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FlipcardsTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $FlipcardsTable> {
  $$FlipcardsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get backContent => $state.composableBuilder(
      column: $state.table.backContent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get frontContent => $state.composableBuilder(
      column: $state.table.frontContent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tags => $state.composableBuilder(
      column: $state.table.tags,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$FlipcardsTableTableManager get flipcards =>
      $$FlipcardsTableTableManager(_db, _db.flipcards);
}
