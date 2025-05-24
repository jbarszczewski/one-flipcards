part of 'app_settings_cubit.dart';

@freezed
sealed class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState.initial(AppSettings appSettings) = _Initial;
  const factory AppSettingsState.updated(AppSettings appSettings) = _Updated;
}
