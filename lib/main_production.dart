import 'package:flutter/material.dart';
import 'package:one_flipcards/src/core/local_database/database.dart';
import 'package:one_flipcards/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:one_flipcards/src/features/settings/domain/settings_repository.dart';

import 'i18n/translations.g.dart';
import 'src/app.dart';
import 'src/features/sample_feature/data/sample_items_local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(TranslationProvider(
      child: App(
    flavor: "Production",
    settingsRepository: SettingsRepository(),
    sampleItemsRepository: SampleItemsRepository(
        localDataSource: SampleItemsLocalDataSource(
            database: LocalDatabase('oneflipcards'))),
  )));
}
