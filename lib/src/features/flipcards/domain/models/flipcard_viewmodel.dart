import 'package:freezed_annotation/freezed_annotation.dart';

part 'flipcard_viewmodel.freezed.dart';

@freezed
sealed class FlipcardViewModel with _$FlipcardViewModel {
  const factory FlipcardViewModel({
    required String id,
    required String frontContent,
    required String backContent,
    String? tags,
  }) = _Flipcard;
}
