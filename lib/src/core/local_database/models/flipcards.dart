import 'package:drift/drift.dart';

class Flipcards extends Table {
  TextColumn get backContent => text()();
  TextColumn get frontContent => text()();
  TextColumn get id => text().withLength(min: 36, max: 36).unique()();

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get tags => text().nullable()();
}
