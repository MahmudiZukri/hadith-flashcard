import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/number/number_failures.dart';

class NumberValidators {
  static Either<NumberFailure, num> validateNumberRange<T>(
    num input,
    num lowestValue,
    num highestValue,
  ) {
    if (input > highestValue) {
      return left(NumberFailure.numberExceedHighestRange(
        failedValue: input,
        highestRange: highestValue,
      ));
    } else if (input < lowestValue) {
      return left(NumberFailure.numberBelowLowestRange(
        failedValue: input,
        lowestRange: lowestValue,
      ));
    } else {
      return right(input);
    }
  }

  static Either<NumberFailure, num> validateWholeNumber<T>(num input) {
    if (input < 0) {
      return left(NumberFailure.numberBelowLowestRange(
        failedValue: input,
        lowestRange: 0,
      ));
    } else {
      return right(input);
    }
  }

  static Either<NumberFailure, num> validatePositiveNumber<T>(num input) {
    if (input < 1) {
      return left(NumberFailure.numberBelowLowestRange(
        failedValue: input,
        lowestRange: 1,
      ));
    } else {
      return right(input);
    }
  }
}
