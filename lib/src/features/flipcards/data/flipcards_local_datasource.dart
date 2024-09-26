import 'package:drift/drift.dart';

import '../../../core/local_database/database.dart';

class FlipcardsLocalDataSource {
  final LocalDatabase _database;

  FlipcardsLocalDataSource({required LocalDatabase database})
      : _database = database;

  Future<void> addFlipcard(
      String id, String frontContent, String backContent, String? tags) async {
    await _database.flipcards.insertOnConflictUpdate(FlipcardsCompanion(
      id: Value(id),
      frontContent: Value(frontContent),
      backContent: Value(backContent),
      tags: Value(tags),
    ));
  }

  Future<void> deleteFlipcard(String id) async {
    await _database.flipcards.deleteWhere((tbl) => tbl.id.equals(id));
  }

  Future<Flipcard?> getFlipcardById(String id) async {
    return (_database.flipcards.select()..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Stream<List<Flipcard>> watchAllFlipcards() {
    return _database.flipcards.select().watch();
  }
}
