part of 'flipcards_overview_bloc.dart';

@freezed
class FlipcardsOverviewEvent with _$FlipcardsOverviewEvent {
  const factory FlipcardsOverviewEvent.createFlipcard(
      FlipcardViewModel flipcard) = _CreateFlipcard;
  const factory FlipcardsOverviewEvent.deleteFlipcard(String id) =
      _DeleteFlipcard;
  const factory FlipcardsOverviewEvent.started() = _Started;
  const factory FlipcardsOverviewEvent.subscribe() = _Subscribe;
}
