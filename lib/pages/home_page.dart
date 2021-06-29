import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../randomizer/bloc/randomizer_cubit.dart';
import '../randomizer/views/randomizer_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return BlocProvider(
        create: (context) => RandomizerCubit(0), child: RandomizerView());
  }
}
