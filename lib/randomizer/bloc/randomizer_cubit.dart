import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class RandomizerCubit extends Cubit<int> {
  Random _random = Random();

  var min = 0;
  var max = 1000;

  RandomizerCubit(int initialState) : super(initialState);

  void nextInt() => _nextInt(min, max);

  void _nextInt(int min, int max,
      {bool isMinInclusive = true, bool isMaxInclusive = true}) {
    min = isMinInclusive ? min : min + 1;
    max = isMaxInclusive ? max + 1 : max;
    var newInt = _random.nextInt(max - min) + min;
    emit(newInt);
  }
}
