import 'package:one_flipcards/src/features/flipcards/data/flipcards_local_datasource.dart';

import 'models/flipcard_viewmodel.dart';

class FlipcardsRepository {
  final FlipcardsLocalDataSource _localDataSource;

  FlipcardsRepository({required FlipcardsLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  Future<void> addFlipcard(FlipcardViewModel item) async {
    await _localDataSource.addFlipcard(
        item.id, item.frontContent, item.backContent, item.tags);
  }

  Future<void> deleteFlipcard(String id) async {
    await _localDataSource.deleteFlipcard(id);
  }

  Future<FlipcardViewModel> getFlipcardById(String id) async {
    final item = await _localDataSource.getFlipcardById(id);
    if (item == null) {
      throw Exception('Item not found');
    }

    return FlipcardViewModel(
      id: item.id,
      frontContent: item.frontContent,
      backContent: item.backContent,
      tags: item.tags,
    );
  }

  Stream<List<FlipcardViewModel>> watchFlipcards() {
    return _localDataSource.watchAllFlipcards().map((items) {
      return items
          .map((item) => FlipcardViewModel(
                id: item.id,
                frontContent: item.frontContent,
                backContent: item.backContent,
                tags: item.tags,
              ))
          .toList();
    });
  }
}
