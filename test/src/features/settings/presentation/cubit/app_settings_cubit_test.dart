import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/settings/domain/models/app_settings.dart';
import 'package:one_flipcards/src/features/settings/domain/settings_repository.dart';
import 'package:one_flipcards/src/features/settings/presentation/cubit/app_settings_cubit.dart';

void main() {
  group('AppSettingsCubit', () {
    late AppSettingsCubit appSettingsCubit;
    late MocksettingsRepository mocksettingsRepository;

    setUp(() {
      mocksettingsRepository = MocksettingsRepository();
      appSettingsCubit = AppSettingsCubit(mocksettingsRepository);
    });

    tearDown(() {
      appSettingsCubit.close();
    });

    test('initial state is correct', () {
      expect(
        appSettingsCubit.state,
        equals(
          const AppSettingsState.initial(
            AppSettings(languageCode: 'en', themeMode: ThemeMode.system),
          ),
        ),
      );
    });

    test('initialize updates app settings state', () async {
      const languageCode = 'en';
      const themeMode = ThemeMode.light;
      when(() => mocksettingsRepository.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mocksettingsRepository.themeMode())
          .thenAnswer((_) async => themeMode);

      await appSettingsCubit.initialize();

      verify(() => mocksettingsRepository.languageCode()).called(1);
      verify(() => mocksettingsRepository.themeMode()).called(1);
      expect(
        appSettingsCubit.state,
        equals(
          AppSettingsState.updated(
            appSettingsCubit.state.appSettings.copyWith(
              languageCode: languageCode,
              themeMode: themeMode,
            ),
          ),
        ),
      );
    });

    test('updateLanguage updates app settings state', () async {
      const languageCode = 'pl';
      const themeMode = ThemeMode.dark;
      when(() => mocksettingsRepository.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mocksettingsRepository.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mocksettingsRepository.updateLanguage(languageCode))
          .thenAnswer((_) async {});

      await appSettingsCubit.updateLanguage(languageCode);

      verify(() => mocksettingsRepository.updateLanguage(languageCode))
          .called(1);
      expect(appSettingsCubit.state, equals(appSettingsCubit.state));
    });

    test('updateThemeMode updates app settings state', () async {
      const languageCode = 'en';
      const themeMode = ThemeMode.dark;
      when(() => mocksettingsRepository.languageCode())
          .thenAnswer((_) async => languageCode);
      when(() => mocksettingsRepository.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mocksettingsRepository.updateThemeMode(themeMode))
          .thenAnswer((_) async {});
      await appSettingsCubit.updateThemeMode(themeMode);

      verify(() => mocksettingsRepository.updateThemeMode(themeMode)).called(1);
      expect(appSettingsCubit.state, equals(appSettingsCubit.state));
    });
  });
}

class MockFlipcardsRepository extends Mock implements FlipcardsRepository {}

class MocksettingsRepository extends Mock implements SettingsRepository {}
