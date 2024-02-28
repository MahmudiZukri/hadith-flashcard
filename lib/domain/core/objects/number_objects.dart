part of 'objects.dart';

@immutable
abstract class NumberObject {
  const NumberObject();
  Either<NumberFailure, num> get value;

  // Throws [UnexpectedValueError] containing the [ValueFailure]
  num getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedNumberError(f), id);
  }

  num? getOrNull() {
    return value.fold((f) => null, id);
  }

  num getOrZero() {
    return value.fold((f) => 0, id);
  }

  // num getOrFailureNumber() => value.fold(
  //     (f) => f.maybeMap(
  //         empty: (_) => 0,
  //         numberBelowLowestRange: (s) => s.failedValue ?? 0,
  //         numberExceedHighestRange: (s) => s.failedValue ?? 0,
  //         orElse: () {
  //           throw 'Only accept NumberObject';
  //         }),
  //     id);

  // String? getFoldValidator(
  //   BuildContext context,
  // ) =>
  //     value.fold(
  //       (l) => l.map(
  //         empty: (_) => S.of(context).textFieldRequired,
  //         numberBelowLowestRange: (a) =>
  //             S.of(context).validationFieldMinimumValue(a.lowestRange),
  //         numberExceedHighestRange: (a) =>
  //             S.of(context).validationFieldMaximumValue(a.highestRange),
  //       ),
  //       (r) => null,
  //     );

  Either<NumberFailure, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NumberObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueNumber extends NumberObject {
  @override
  final Either<NumberFailure, num> value;

  // We cannot let a simple Number be passed in. This would allow for possible non-unique IDs.
  factory UniqueNumber() {
    return UniqueNumber._(
      right(DateTime.now().millisecondsSinceEpoch),
    );
  }

  /// Used with numbers we trust are unique, such as database IDs.
  factory UniqueNumber.fromUniqueNumber(num uniqueIdInt) {
    return UniqueNumber._(
      right(uniqueIdInt),
    );
  }

  // Used for initiate empty UniqueNumber
  factory UniqueNumber.empty() {
    return UniqueNumber._(left(const NumberFailure.empty(failedValue: -1)));
  }

  const UniqueNumber._(this.value);
}

class PositiveNumber extends NumberObject {
  @override
  final Either<NumberFailure, num> value;

  factory PositiveNumber(num input) {
    return PositiveNumber._(
      NumberValidators.validateWholeNumber(input),
    );
  }

  // Used for initiate empty Positive Number
  factory PositiveNumber.empty() {
    return PositiveNumber._(left(const NumberFailure.empty(failedValue: -1)));
  }

  const PositiveNumber._(this.value);
}

class ReviewRatingNumber extends NumberObject {
  @override
  final Either<NumberFailure, num> value;

  factory ReviewRatingNumber(num input, num min, num max) {
    return ReviewRatingNumber._(
      NumberValidators.validateNumberRange(
        input,
        min,
        max,
      ),
    );
  }

  const ReviewRatingNumber._(this.value);
}
