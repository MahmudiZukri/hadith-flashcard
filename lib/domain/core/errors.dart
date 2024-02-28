import 'package:hadith_flashcard/domain/core/failures/number/number_failures.dart';

import 'failures/string/string_failures.dart';
import 'failures/value/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class UnexpectedStringError extends Error {
  final StringFailure valueFailure;

  UnexpectedStringError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a StringFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

class UnexpectedNumberError extends Error {
  final NumberFailure valueFailure;

  UnexpectedNumberError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a NumberFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
