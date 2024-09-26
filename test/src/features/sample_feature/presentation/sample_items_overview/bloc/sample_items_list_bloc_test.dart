import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/flipcards/domain/models/flipcard_viewmodel.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcards_overview/bloc/flipcards_overview_bloc.dart';

void main() {
  late FlipcardsOverviewBloc bloc;
  late MockFlipcardsRepository mockItemsRepository;

  setUp(() {
    mockItemsRepository = MockFlipcardsRepository();
    bloc = FlipcardsOverviewBloc(mockItemsRepository);
  });

  tearDown(() {
    bloc.close();
  });

  group('FlipcardsListBloc', () {
    final sampleItems = [
      const FlipcardViewModel(
          id: '1', frontContent: 'Item 1', backContent: 'This is item 1'),
      const FlipcardViewModel(id: '2', frontContent: 'Item 2', backContent: 'This is item 2'),
      const FlipcardViewModel(
          id: '3', frontContent: 'Item 3', backContent: 'This is item 3'),
    ];

    test('initial state is Initial', () {
      expect(bloc.state, const FlipcardsOverviewState.initial());
    });

    blocTest<FlipcardsOverviewBloc, FlipcardsOverviewState>(
      'emits [Loading, Loaded] when Subscribe event is added successfully',
      build: () {
        when(() => mockItemsRepository.watchFlipcards())
            .thenAnswer((_) => Stream.value(sampleItems));
        return bloc;
      },
      act: (bloc) => bloc.add(const FlipcardsOverviewEvent.subscribe()),
      expect: () => [
        const FlipcardsOverviewState.loading(),
        FlipcardsOverviewState.success(sampleItems),
      ],
    );

    blocTest<FlipcardsOverviewBloc, FlipcardsOverviewState>(
      'emits [Loading, Error] when Subscribe event is added and an error occurs',
      build: () {
        when(() => mockItemsRepository.watchFlipcards())
            .thenAnswer((_) => Stream.error(Exception('Error')));
        return bloc;
      },
      act: (bloc) => bloc.add(const FlipcardsOverviewEvent.subscribe()),
      expect: () => [
        const FlipcardsOverviewState.loading(),
        const FlipcardsOverviewState.error(),
      ],
    );
  });
}

class MockFlipcardsRepository extends Mock implements FlipcardsRepository {}
