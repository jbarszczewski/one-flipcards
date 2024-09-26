import 'package:flutter/material.dart';
import 'package:one_flipcards/src/core/local_database/database.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/settings/domain/settings_repository.dart';

import 'i18n/translations.g.dart';
import 'src/app.dart';
import 'src/features/flipcards/data/flipcards_local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(TranslationProvider(
      child: App(
    flavor: "Local",
    settingsRepository: SettingsRepository(),
    sampleItemsRepository: FlipcardsRepository(
        localDataSource:
            FlipcardsLocalDataSource(database: LocalDatabase('oneflipcards'))),
  )));
}
