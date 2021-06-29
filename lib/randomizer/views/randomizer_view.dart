import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/randomizer_cubit.dart';

class RandomizerView extends StatelessWidget {
  const RandomizerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Random Generator')),
      body: Center(
          child: BlocBuilder<RandomizerCubit, int>(
        builder: (_, state) => Text(
          '$state',
          style: theme.textTheme.headline2,
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () => context.read<RandomizerCubit>().nextInt(0, 256),
          child: const Icon(Icons.radar),
        ),
      ),
    );
  }
}
