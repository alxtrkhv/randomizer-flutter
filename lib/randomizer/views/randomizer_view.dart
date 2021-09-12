import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/randomizer_bloc.dart';
import '../../ui/input_field_with_label.dart';

class RandomizerView extends StatelessWidget {
  const RandomizerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<RandomizerBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Random Generator')),
      body: Center(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 50),
              child: _InputRange(bloc: bloc)),
          BlocBuilder<RandomizerBloc, RandomizerState>(
            bloc: bloc,
            builder: (_, state) => Text(
              '${state.value}',
              style: theme.textTheme.headline2,
            ),
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () => bloc.add(RandomizerValueRequested()),
          child: const Icon(Icons.radar),
        ),
      ),
    );
  }
}

class _InputRange extends StatelessWidget {
  _InputRange({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  final RandomizerBloc bloc;

  @override
  Widget build(BuildContext context) {
    const minLabel = 'Min';
    const maxLabel = 'Max';

    const double fieldWidth = 75;
    const double fieldHeigth = 100;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InputFieldWithLabel(
          width: fieldWidth,
          height: fieldHeigth,
          label: minLabel,
          controller: TextEditingController(text: '${bloc.state.min}'),
          onSubmitted: (input) =>
              bloc.add(RandomizerRangeUpdated(min: int.parse(input))),
        ),
        InputFieldWithLabel(
          width: fieldWidth,
          height: fieldHeigth,
          label: maxLabel,
          controller: TextEditingController(text: '${bloc.state.max}'),
          onSubmitted: (input) =>
              bloc.add(RandomizerRangeUpdated(max: int.parse(input))),
        ),
      ],
    );
  }
}
