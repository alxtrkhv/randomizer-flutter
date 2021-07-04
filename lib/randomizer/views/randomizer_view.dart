import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/input_field_with_label.dart';
import '../bloc/randomizer_cubit.dart';

class RandomizerView extends StatelessWidget {
  const RandomizerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final randomizerCubit = context.read<RandomizerCubit>();

    return Scaffold(
      appBar: AppBar(title: Text('Random Generator')),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InputFieldWithLabel(
                  width: 75,
                  height: 100,
                  label: 'Min',
                  controller:
                      TextEditingController(text: '${randomizerCubit.min}'),
                  onSubmitted: (input) =>
                      randomizerCubit.min = int.parse(input),
                ),
                InputFieldWithLabel(
                  width: 75,
                  height: 100,
                  label: 'Max',
                  controller:
                      TextEditingController(text: '${randomizerCubit.max}'),
                  onSubmitted: (input) =>
                      randomizerCubit.max = int.parse(input),
                ),
              ],
            ),
          ),
          BlocBuilder<RandomizerCubit, int>(
            bloc: randomizerCubit,
            builder: (_, state) => Text(
              '$state',
              style: theme.textTheme.headline2,
            ),
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () => randomizerCubit.nextInt(),
          child: const Icon(Icons.radar),
        ),
      ),
    );
  }
}
