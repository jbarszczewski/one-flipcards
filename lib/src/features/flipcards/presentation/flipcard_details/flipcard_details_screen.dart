import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../i18n/translations.g.dart';
import 'cubit/flipcard_details_cubit.dart';

/// Displays detailed information about a Flipcard.
class FlipcardDetailsScreen extends StatelessWidget {
  final String id;

  const FlipcardDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // block builder that use FlipcardDetailsCubit
          BlocBuilder<FlipcardDetailsCubit, FlipcardDetailsState>(
            builder: (context, state) => state.when(
              initial: () {
                context.read<FlipcardDetailsCubit>().getItemById(id);
                return const Center(child: CircularProgressIndicator());
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (item) => Column(
                children: [
                  Text('ID: ${item.id}'),
                  Text('Name: ${item.frontContent}'),
                  Text('Optional content: ${item.tags}'),
                  ElevatedButton(
                    child: Text(context.l10n.itemDetails.deleteButton),
                    onPressed: () =>
                        context.read<FlipcardDetailsCubit>().deleteItem(id),
                  )
                ],
              ),
              error: () => const Center(child: Text('Error')),
            ),
          ),
        ],
      ),
    );
  }
}
