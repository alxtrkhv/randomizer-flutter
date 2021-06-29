import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_number_generator/random_generator_cubit.dart';

class RandomGeneratorView extends StatelessWidget {
  final double width;
  final double height;

  RandomGeneratorView({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            BlocBuilder<RandomGeneratorCubit, int>(
                builder: (context, state) => Text('$state')),
            TextButton(
              onPressed: context.read<RandomGeneratorCubit>().nextInt,
              child: Text('Click me'),
            )
          ],
        ));
  }
}
