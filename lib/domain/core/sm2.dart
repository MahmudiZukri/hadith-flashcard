import 'package:equatable/equatable.dart';

class Sm2Response extends Equatable {
  final int interval;
  final int repetitions;
  final double easeFactor;

  const Sm2Response(this.interval, this.repetitions, this.easeFactor);

  @override
  List<Object?> get props => [interval, repetitions, easeFactor];
}

class Sm2 {
  static Sm2Response calc({
    required int quality,
    required int repetition,
    required int previousInterval,
    required double previousEaseFactor,
  }) {
    int interval;
    double easeFactor;
    if (quality >= 3) {
      switch (repetition) {
        case 0:
          interval = 1;
          break;
        case 1:
          interval = 6;
          break;
        default:
          interval = (previousInterval * previousEaseFactor).round();
      }

      repetition++;
      easeFactor = previousEaseFactor +
          (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02));
    } else {
      repetition = 0;
      interval = 1;
      easeFactor = previousEaseFactor;
    }

    if (easeFactor < 1.3) {
      easeFactor = 1.3;
    }

    return Sm2Response(interval, repetition, easeFactor);
  }
}
