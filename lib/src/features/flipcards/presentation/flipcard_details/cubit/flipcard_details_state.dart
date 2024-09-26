part of 'flipcard_details_cubit.dart';

@freezed
class FlipcardDetailsState with _$FlipcardDetailsState {
  const factory FlipcardDetailsState.error() = _Error;
  const factory FlipcardDetailsState.initial() = _Initial;
  const factory FlipcardDetailsState.loading() = _Loading;
  const factory FlipcardDetailsState.success(FlipcardViewModel item) = _Success;
}
