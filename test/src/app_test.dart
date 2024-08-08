import 'package:one_flipcards/i18n/translations.g.dart';
import 'package:one_flipcards/src/app.dart';
import 'package:one_flipcards/src/features/sample_feature/domain/models/sample_item_viewmodel.dart';
import 'package:one_flipcards/src/features/sample_feature/domain/sample_items_repository.dart';
import 'package:one_flipcards/src/features/sample_feature/presentation/sample_item_details/sample_item_details_screen.dart';
import 'package:one_flipcards/src/features/sample_feature/presentation/sample_items_overview/sample_items_overview_screen.dart';
import 'package:one_flipcards/src/features/settings/domain/settings_repository.dart';
import 'package:one_flipcards/src/features/settings/presentation/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group("App", () {
    late MocksettingsRepository mocksettingsRepository;
    late MockSampleItemsRepository mockItemsRepository;

    setUp(() {
      mocksettingsRepository = MocksettingsRepository();
      const themeMode = ThemeMode.light;
      const language = 'en';
      when(() => mocksettingsRepository.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mocksettingsRepository.languageCode())
          .thenAnswer((_) async => language);

      mockItemsRepository = MockSampleItemsRepository();
      when(() => mockItemsRepository.watchSampleItems())
          .thenAnswer((_) => Stream.value([
                const SampleItemViewModel(
                    id: '1', name: 'Item 1', content: 'This is item 1'),
                const SampleItemViewModel(id: '2', name: 'Item 2'),
                const SampleItemViewModel(
                    id: '3', name: 'Item 3', content: 'This is item 3'),
              ]));
      when(() => mockItemsRepository.getSampleItemById('1')).thenAnswer(
          (_) async => const SampleItemViewModel(id: '1', name: 'Item 1'));
    });
    testWidgets('displays sample items list view', (tester) async {
      // Build the MyApp widget
      await tester.pumpWidget(TranslationProvider(
          child: App(
              flavor: "Test",
              settingsRepository: mocksettingsRepository,
              sampleItemsRepository: mockItemsRepository)));
      await tester.pumpAndSettle();
      // Verify that the SampleItemListView is displayed
      expect(find.byType(SampleItemsOverviewScreen), findsOneWidget);
    });

    testWidgets('displays sample item details view', (tester) async {
      // Build the MyApp widget
      await tester.pumpWidget(TranslationProvider(
          child: App(
              flavor: "Test",
              settingsRepository: mocksettingsRepository,
              sampleItemsRepository: mockItemsRepository)));

      // Wait for the animation to complete
      await tester.pumpAndSettle();

      // Tap on the sample item list tile
      await tester.tap(find.byType(ListTile).first);

      // Wait for the animation to complete
      await tester.pumpAndSettle();

      // Verify that the SampleItemDetailsView is displayed
      expect(find.byType(SampleItemDetailsScreen), findsOneWidget);
    });

    testWidgets('displays settings view', (tester) async {
      // Build the MyApp widget
      await tester.pumpWidget(TranslationProvider(
          child: App(
              flavor: "Test",
              settingsRepository: mocksettingsRepository,
              sampleItemsRepository: mockItemsRepository)));

      // Wait for the animation to complete
      await tester.pumpAndSettle();

      // Tap on the settings button
      await tester.tap(find.byIcon(Icons.settings));

      // Wait for the animation to complete
      await tester.pumpAndSettle();

      // Verify that the SettingsView is displayed
      expect(find.byType(SettingsScreen), findsOneWidget);
    });
  });
}

class MockSampleItemsRepository extends Mock implements SampleItemsRepository {}

class MocksettingsRepository extends Mock implements SettingsRepository {}
