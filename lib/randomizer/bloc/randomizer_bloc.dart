import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'randomizer_event.dart';
part 'randomizer_state.dart';

class RandomizerBloc extends Bloc<RandomizerEvent, RandomizerState> {
  final _random = Random();

  RandomizerBloc() : super(RandomizerInitial());

  @override
  Stream<RandomizerState> mapEventToState(
    RandomizerEvent event,
  ) async* {
    if (event is RandomizerValueRequested) {
      yield state.copyWith(value: _nextInt(state));
    } else if (event is RandomizerRangeUpdated) {
      yield state.copyWith(min: event.min, max: event.max);
    }
  }

  int _nextInt(RandomizerState state,
      {bool isMinInclusive = true, bool isMaxInclusive = true}) {
    var min = state.min;
    var max = state.max;
    min = isMinInclusive ? min : min + 1;
    max = isMaxInclusive ? max + 1 : max;
    return _random.nextInt(max - min) + min;
  }
}
