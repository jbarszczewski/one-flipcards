import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/i18n/translations.g.dart';
import 'package:one_flipcards/src/app.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/flipcards/domain/models/flipcard_viewmodel.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcard_details/flipcard_details_screen.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcards_overview/flipcards_overview_screen.dart';
import 'package:one_flipcards/src/features/settings/domain/settings_repository.dart';
import 'package:one_flipcards/src/features/settings/presentation/settings_screen.dart';

void main() {
  group("App", () {
    late MocksettingsRepository mocksettingsRepository;
    late MockFlipcardsRepository mockItemsRepository;

    setUp(() {
      mocksettingsRepository = MocksettingsRepository();
      const themeMode = ThemeMode.light;
      const language = 'en';
      when(() => mocksettingsRepository.themeMode())
          .thenAnswer((_) async => themeMode);
      when(() => mocksettingsRepository.languageCode())
          .thenAnswer((_) async => language);

      mockItemsRepository = MockFlipcardsRepository();
      when(() => mockItemsRepository.watchFlipcards())
          .thenAnswer((_) => Stream.value([
                const FlipcardViewModel(
                    id: '1',
                    frontContent: 'Item 1',
                    backContent: 'This is item 1',
                    tags: 'tag1, tag2'),
                const FlipcardViewModel(
                    id: '2',
                    frontContent: 'Item 2',
                    backContent: 'This is item 2'),
                const FlipcardViewModel(
                    id: '3',
                    frontContent: 'Item 3',
                    backContent: 'This is item 3'),
              ]));
      when(() => mockItemsRepository.getFlipcardById('1')).thenAnswer(
          (_) async => const FlipcardViewModel(
              id: '1', frontContent: 'Item 1', backContent: 'This is item 1'));
    });
    testWidgets('displays sample items list view', (tester) async {
      // Build the MyApp widget
      await tester.pumpWidget(TranslationProvider(
          child: App(
              flavor: "Test",
              settingsRepository: mocksettingsRepository,
              sampleItemsRepository: mockItemsRepository)));
      await tester.pumpAndSettle();
      // Verify that the FlipcardListView is displayed
      expect(find.byType(FlipcardsOverviewScreen), findsOneWidget);
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

      // Verify that the FlipcardDetailsView is displayed
      expect(find.byType(FlipcardDetailsScreen), findsOneWidget);
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

class MockFlipcardsRepository extends Mock implements FlipcardsRepository {}

class MocksettingsRepository extends Mock implements SettingsRepository {}
