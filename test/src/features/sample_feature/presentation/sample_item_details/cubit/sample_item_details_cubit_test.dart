import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one_flipcards/src/features/flipcards/domain/flipcards_repository.dart';
import 'package:one_flipcards/src/features/flipcards/domain/models/flipcard_viewmodel.dart';
import 'package:one_flipcards/src/features/flipcards/presentation/flipcard_details/cubit/flipcard_details_cubit.dart';

void main() {
  group('FlipcardDetailsCubit', () {
    late FlipcardsRepository sampleItemsRepository;
    late FlipcardDetailsCubit cubit;

    setUp(() {
      sampleItemsRepository = MockFlipcardsRepository();
      cubit = FlipcardDetailsCubit(sampleItemsRepository);
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is FlipcardDetailsState.initial', () {
      expect(cubit.state, equals(const FlipcardDetailsState.initial()));
    });

    blocTest<FlipcardDetailsCubit, FlipcardDetailsState>(
      'emits [loading, success] when getItemById is called successfully',
      build: () {
        when(() => sampleItemsRepository.getFlipcardById('1')).thenAnswer(
            (_) async => const FlipcardViewModel(
                id: '1', frontContent: 'Sample', backContent: 'Item'));
        return cubit;
      },
      act: (cubit) => cubit.getItemById('1'),
      expect: () => [
        const FlipcardDetailsState.loading(),
        const FlipcardDetailsState.success(FlipcardViewModel(
            id: '1', frontContent: 'Sample', backContent: 'Item')),
      ],
    );

    blocTest<FlipcardDetailsCubit, FlipcardDetailsState>(
      'emits [loading, error] when getItemById throws an exception',
      build: () {
        when(() => sampleItemsRepository.getFlipcardById('1'))
            .thenThrow(Exception());
        return cubit;
      },
      act: (cubit) => cubit.getItemById('1'),
      expect: () => [
        const FlipcardDetailsState.loading(),
        const FlipcardDetailsState.error(),
      ],
    );

    blocTest<FlipcardDetailsCubit, FlipcardDetailsState>(
      'emits [loading, initial] when deleteItem is called successfully',
      build: () {
        when(() => sampleItemsRepository.deleteFlipcard('1'))
            .thenAnswer((_) async {});
        return cubit;
      },
      act: (cubit) => cubit.deleteItem('1'),
      expect: () => [
        const FlipcardDetailsState.loading(),
        const FlipcardDetailsState.initial(),
      ],
    );

    blocTest<FlipcardDetailsCubit, FlipcardDetailsState>(
      'emits [loading, error] when deleteItem throws an exception',
      build: () {
        when(() => sampleItemsRepository.deleteFlipcard('1'))
            .thenThrow(Exception());
        return cubit;
      },
      act: (cubit) => cubit.deleteItem('1'),
      expect: () => [
        const FlipcardDetailsState.loading(),
        const FlipcardDetailsState.error(),
      ],
    );
  });
}

class MockFlipcardsRepository extends Mock implements FlipcardsRepository {}
