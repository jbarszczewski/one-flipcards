import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/flipcards_repository.dart';
import '../../../domain/models/flipcard_viewmodel.dart';

part 'flipcard_details_cubit.freezed.dart';
part 'flipcard_details_state.dart';

class FlipcardDetailsCubit extends Cubit<FlipcardDetailsState> {
  final FlipcardsRepository _sampleItemsRepository;

  FlipcardDetailsCubit(this._sampleItemsRepository)
      : super(const FlipcardDetailsState.initial());

  Future<void> deleteItem(String id) async {
    emit(const FlipcardDetailsState.loading());
    try {
      await _sampleItemsRepository.deleteFlipcard(id);
      emit(const FlipcardDetailsState.initial());
    } catch (e) {
      emit(const FlipcardDetailsState.error());
    }
  }

  Future<void> getItemById(String id) async {
    emit(const FlipcardDetailsState.loading());
    try {
      final item = await _sampleItemsRepository.getFlipcardById(id);
      emit(FlipcardDetailsState.success(item));
    } catch (e) {
      emit(const FlipcardDetailsState.error());
    }
  }
}
