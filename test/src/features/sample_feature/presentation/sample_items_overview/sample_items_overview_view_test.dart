import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/i18n/translations.g.dart';
import 'package:one_flipcards/src/features/flipcards/domain/models/flipcard_viewmodel.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcards_overview/bloc/flipcards_overview_bloc.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcards_overview/flipcards_overview_screen.dart';

void main() {
  late MockFlipcardsOverviewBloc mockBloc;
  late MockNavigatorObserver mockObserver;

  setUp(() {
    mockBloc = MockFlipcardsOverviewBloc();
    mockObserver = MockNavigatorObserver();
  });

  Widget createWidgetUnderTest() {
    return TranslationProvider(
      child: MaterialApp(
        home: BlocProvider<FlipcardsOverviewBloc>.value(
          value: mockBloc,
          child: const Scaffold(body: FlipcardsOverviewScreen()),
        ),
        navigatorObservers: [mockObserver],
      ),
    );
  }

  group('FlipcardsOverviewScreen', () {
    testWidgets('renders CircularProgressIndicator when state is initial',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const FlipcardsOverviewState.initial());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      verify(() => mockBloc.add(const FlipcardsOverviewEvent.subscribe()))
          .called(1);
    });

    testWidgets('renders CircularProgressIndicator when state is loading',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const FlipcardsOverviewState.loading());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders error message when state is error',
        (WidgetTester tester) async {
      when(() => mockBloc.state)
          .thenReturn(const FlipcardsOverviewState.error());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('Error'), findsOneWidget);
    });

    testWidgets('renders list of items when state is loaded',
        (WidgetTester tester) async {
      final items = [
        const FlipcardViewModel(
            id: '1', frontContent: 'Item 1', backContent: 'Content 1'),
        const FlipcardViewModel(
            id: '2', frontContent: 'Item 2', backContent: 'Content 2'),
      ];
      when(() => mockBloc.state)
          .thenReturn(FlipcardsOverviewState.success(items));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(ListView), findsOneWidget);
      expect(find.text('Item 1'), findsOneWidget);
      expect(find.text('Item 2'), findsOneWidget);
    });
  });
}

// Mock classes
class MockFlipcardsOverviewBloc
    extends MockBloc<FlipcardsOverviewEvent, FlipcardsOverviewState>
    implements FlipcardsOverviewBloc {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}
