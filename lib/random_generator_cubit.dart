import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class RandomGeneratorCubit extends Cubit<int> {
  Random _random = Random();
  int _maxValue;

  RandomGeneratorCubit(int initialState, this._maxValue) : super(initialState);

  void nextInt() {
    var newInt = _random.nextInt(_maxValue);
    emit(newInt);
  }
}
