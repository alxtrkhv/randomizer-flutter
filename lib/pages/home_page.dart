import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_number_generator/random_generator_cubit.dart';
import 'package:random_number_generator/views/random_generator_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Generator')),
      body: Center(
        child: BlocProvider(
          create: (_) => RandomGeneratorCubit(0, 256),
          child: RandomGeneratorView(
            width: 75,
            height: 50,
          ),
        ),
      ),
    );
  }
}
