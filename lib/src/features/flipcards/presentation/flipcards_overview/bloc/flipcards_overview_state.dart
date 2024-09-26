part of 'flipcards_overview_bloc.dart';

@freezed
class FlipcardsOverviewState with _$FlipcardsOverviewState {
  const factory FlipcardsOverviewState.error() = _Error;
  const factory FlipcardsOverviewState.initial() = _Initial;
  const factory FlipcardsOverviewState.loading() = _Loading;
  const factory FlipcardsOverviewState.success(
      List<FlipcardViewModel> flipcards) = _Success;
}
