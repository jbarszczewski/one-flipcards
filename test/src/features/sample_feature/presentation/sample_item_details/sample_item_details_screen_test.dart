import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/i18n/translations.g.dart';
import 'package:one_flipcards/src/features/flipcards/domain/models/flipcard_viewmodel.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcard_details/cubit/flipcard_details_cubit.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcard_details/flipcard_details_screen.dart';

void main() {
  group('FlipcardDetailsScreen', () {
    late FlipcardDetailsCubit sampleItemDetailsCubit;

    setUp(() {
      sampleItemDetailsCubit = MockFlipcardDetailsCubit();
    });

    Widget createWidgetUnderTest() {
      return TranslationProvider(
        child: MaterialApp(
          home: BlocProvider<FlipcardDetailsCubit>.value(
            value: sampleItemDetailsCubit,
            child: const Scaffold(body: FlipcardDetailsScreen(id: 'sampleId')),
          ),
        ),
      );
    }

    testWidgets('renders CircularProgressIndicator when initial state',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const FlipcardDetailsState.initial());
      when(() => sampleItemDetailsCubit.getItemById("sampleId"))
          .thenAnswer((_) async {});

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders CircularProgressIndicator when loading state',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const FlipcardDetailsState.loading());

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders item details when success state',
        (WidgetTester tester) async {
      const sampleItem = FlipcardViewModel(
          id: 'sampleId',
          frontContent: 'Sample Name',
          backContent: 'Sample Content');
      when(() => sampleItemDetailsCubit.state)
          .thenReturn(const FlipcardDetailsState.success(sampleItem));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('ID: ${sampleItem.id}'), findsOneWidget);
      expect(find.text('Name: ${sampleItem.frontContent}'), findsOneWidget);
      expect(find.text('Optional content: ${sampleItem.tags}'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('calls deleteItem when delete button is pressed',
        (WidgetTester tester) async {
      when(() => sampleItemDetailsCubit.state).thenReturn(
          const FlipcardDetailsState.success(FlipcardViewModel(
              id: 'sampleId', frontContent: 'Sample', backContent: 'Item')));
      when(() => sampleItemDetailsCubit.deleteItem("sampleId"))
          .thenAnswer((_) async {});

      await tester.pumpWidget(createWidgetUnderTest());

      await tester.tap(find.byType(ElevatedButton));

      verify(() => sampleItemDetailsCubit.deleteItem('sampleId')).called(1);
    });
  });
}

class MockFlipcardDetailsCubit extends MockCubit<FlipcardDetailsState>
    implements FlipcardDetailsCubit {}
