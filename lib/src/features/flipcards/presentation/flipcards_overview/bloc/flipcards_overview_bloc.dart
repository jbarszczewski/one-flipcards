import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/flipcards_repository.dart';
import '../../../domain/models/flipcard_viewmodel.dart';

part 'flipcards_overview_bloc.freezed.dart';
part 'flipcards_overview_event.dart';
part 'flipcards_overview_state.dart';

class FlipcardsOverviewBloc
    extends Bloc<FlipcardsOverviewEvent, FlipcardsOverviewState> {
  final FlipcardsRepository _sampleItemsRepository;
  FlipcardsOverviewBloc(this._sampleItemsRepository) : super(const _Initial()) {
    on<FlipcardsOverviewEvent>((event, emit) async {
      await event.when(
          started: () async => emit(const _Initial()),
          createFlipcard: (FlipcardViewModel flipcard) =>
              _createFlipcard(flipcard, emit),
          deleteFlipcard: (String id) => _deleteFlipcard(id, emit),
          subscribe: () => _subscribe(emit));
    });
  }

  Future<void> _createFlipcard(
      FlipcardViewModel item, Emitter<FlipcardsOverviewState> emit) async {
    emit(const _Loading());
    try {
      await _sampleItemsRepository
          .addFlipcard(item.copyWith(id: const Uuid().v4()));
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> _deleteFlipcard(
      String id, Emitter<FlipcardsOverviewState> emit) async {
    emit(const _Loading());
    try {
      await _sampleItemsRepository.deleteFlipcard(id);
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> _subscribe(Emitter<FlipcardsOverviewState> emit) async {
    emit(const _Loading());
    await emit.forEach(_sampleItemsRepository.watchFlipcards(),
        onData: (items) => _Success(items), onError: (_, __) => const _Error());
  }
}
