part of 'randomizer_bloc.dart';

@immutable
abstract class RandomizerEvent {
  const RandomizerEvent();
}

class RandomizerRangeUpdated extends RandomizerEvent {
  const RandomizerRangeUpdated({this.min, this.max});

  final int? min;
  final int? max;
}

class RandomizerValueRequested extends RandomizerEvent {}
