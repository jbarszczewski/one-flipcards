import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_flipcards/src/core/router/app_router.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcard_details/cubit/flipcard_details_cubit.dart';

import '/i18n/translations.g.dart';
import 'core/themes/app_theme.dart';
import 'features/flipcards/presentation/flipcards_overview/bloc/flipcards_overview_bloc.dart';
import 'features/settings/domain/settings_repository.dart';
import 'features/settings/presentation/cubit/app_settings_cubit.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  final String flavor;
  final SettingsRepository _settingsRepository;
  final FlipcardsRepository _sampleItemsRepository;

  const App(
      {required SettingsRepository settingsRepository,
      required FlipcardsRepository sampleItemsRepository,
      required this.flavor,
      super.key})
      : _settingsRepository = settingsRepository,
        _sampleItemsRepository = sampleItemsRepository;

  @override
  Widget build(BuildContext context) {
    var router = appRouter;
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _settingsRepository),
        RepositoryProvider.value(value: _sampleItemsRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<FlipcardsOverviewBloc>(
              create: (_) => FlipcardsOverviewBloc(_sampleItemsRepository)),
          BlocProvider<FlipcardDetailsCubit>(
              create: (_) => FlipcardDetailsCubit(_sampleItemsRepository)),
          BlocProvider<AppSettingsCubit>(
            create: (_) => AppSettingsCubit(_settingsRepository)..initialize(),
          ),
        ],
        child: BlocBuilder<AppSettingsCubit, AppSettingsState>(
            builder: (context, state) {
          return MaterialApp.router(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: child!,
              );
            },
            debugShowCheckedModeBanner: flavor == 'Local',
            routerConfig: router,
            // Providing a restorationScopeId allows the Navigator built by the
            // MaterialApp to restore the navigation stack when a user leaves and
            // returns to the app after it has been killed while running in the
            // background.
            restorationScopeId: 'app',
            locale: TranslationProvider.of(context).flutterLocale,
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            supportedLocales: AppLocaleUtils.supportedLocales,
            theme: AppTheme.materialLight,
            darkTheme: AppTheme.materialDark,
            themeMode: state.appSettings.themeMode,
          );
        }),
      ),
    );
  }
}
