part of 'randomizer_bloc.dart';

@immutable
class RandomizerState {
  const RandomizerState(
      {required this.value, required this.min, required this.max});

  final int value;
  final int min;
  final int max;

  RandomizerState copyWith({int? value, int? min, int? max}) {
    return RandomizerState(
        value: value ?? this.value, min: min ?? this.min, max: max ?? this.max);
  }
}

class RandomizerInitial extends RandomizerState {
  const RandomizerInitial() : super(value: 0, min: 0, max: 0);
}
