import 'package:fpdart/fpdart.dart';
import 'package:hadith_flashcard/domain/core/failures/string/string_failures.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';

class StringValidators {
  static Either<StringFailure, String> validateMaxStringLength(
    String input,
    int maxLength,
  ) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(
        StringFailure.exceedingLength(failedValue: input, max: maxLength),
      );
    }
  }

  static Either<StringFailure, String> validateIsAlphanumeric(
    String input,
  ) {
    if (RegExp(r'^[a-zA-Z0-9]+$').hasMatch(input)) {
      return right(input);
    } else {
      return left(
        StringFailure.isNotAlphanumeric(failedValue: input),
      );
    }
  }

  static Either<StringFailure, String> validateNoWhitespace(
    String input,
  ) {
    if (input.contains(' ')) {
      return left(
        StringFailure.hasWhitespace(failedValue: input),
      );
    } else {
      return right(input);
    }
  }

  static Either<StringFailure, String> validateStringLength(
    String input,
    int length,
  ) {
    if (input.length == length) {
      return right(input);
    } else {
      return left(
        StringFailure.wrongLength(failedValue: input, length: length),
      );
    }
  }

  static Either<StringFailure, String> validateMinStringLength(
    String input,
    int minLength,
  ) {
    if (input.length >= minLength) {
      return right(input);
    } else {
      return left(
        StringFailure.lengthTooShort(failedValue: input, min: minLength),
      );
    }
  }

  static Either<StringFailure, String> validateUrl(
    String input,
  ) {
    if (input.startsWith('http')) {
      return right(input);
    } else {
      return left(
        StringFailure.invalidUrl(failedValue: input),
      );
    }
  }

  static Either<StringFailure, String> validateSKU(
    String input,
  ) {
    if (input.startsWith('SKU-')) {
      return right(input);
    } else {
      return left(
        StringFailure.invalidSKU(failedValue: input),
      );
    }
  }

  static Either<StringFailure, String> validateURl(
    String input,
  ) {
    final urlRegex = RegExp(
        r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)');

    if (input.isEmpty) {
      return left(
        StringFailure.empty(failedValue: input),
      );
    } else if (urlRegex.hasMatch(input)) {
      return right(input);
    } else {
      return left(
        StringFailure.invalidUrl(failedValue: input),
      );
    }
  }

  static Either<StringFailure, String> validateStringNotEmpty(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(StringFailure.empty(failedValue: input));
    }
  }

  static Either<StringFailure, String> validateSingleLine(String input) {
    if (input.contains('\n')) {
      return left(StringFailure.multiline(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<StringFailure, String> validatePhone(
    String input,
  ) {
    if (input.isEmpty) {
      return left(StringFailure.empty(failedValue: input));
    } else if (input.length < 8 || input.length > 15) {
      return left(StringFailure.invalidPhone(failedValue: input));
    } else if (!RegExp(r'^[0-9]+$').hasMatch(input)) {
      return left(StringFailure.invalidPhone(failedValue: input));
    }
    return right(input);
  }

  static Either<StringFailure, String> validateIdentityNumber(
    String input,
  ) {
    if (input.isEmpty) {
      return left(StringFailure.empty(failedValue: input));
    } else if (input.length < 16) {
      return left(StringFailure.lengthTooShort(failedValue: input, min: 16));
    } else if (input.length > 16) {
      return left(StringFailure.exceedingLength(failedValue: input, max: 16));
    } else {
      return right(input);
    }
  }

  static Either<StringFailure, String> validatePersonName(String input) {
    if (!input.contains(RegExp('[0-9]'))) {
      return right(input);
    } else {
      return left(
        StringFailure.invalidPersonName(failedValue: input),
      );
    }
  }

  static Either<StringFailure, String> validateEmail(String input) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    if (input.isEmpty) {
      return left(StringFailure.empty(failedValue: input));
    } else if (!RegExp(pattern).hasMatch(input)) {
      return left(StringFailure.invalidEmail(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<StringFailure, String> validatePassword(String input) {
    return input.length >= 6
        ? right(input)
        : left(
            StringFailure.lengthTooShort(
              failedValue: input,
              min: 6,
            ),
          );
  }

  static Either<StringFailure, String> validateDateWithTime(
      DateTime input, String pattern) {
    final String? sDate = CommonUtils.dateFormat(input, pattern);
    if (sDate == null) {
      return left(
          StringFailure.invalidDateTime(failedValue: input, pattern: pattern));
    }
    return right(sDate);
  }

  static Either<StringFailure, String> validateTime(
    String input,
  ) {
    if (input.length == 8) {
      if (input.split(':').join().length == 6) {
        if (int.tryParse(input.split(':').join()) != null) {
          return right(input);
        }
      }
    }
    return left(StringFailure.invalidTime(failedValue: input));
  }

  static Either<StringFailure, String> validateDate(
    String input,
  ) {
    final parsedDateTime = DateTime.tryParse(input);
    if (parsedDateTime != null) {
      return right(input);
    }
    // if (input.length == 8) {
    //   if (input.split('-').join().length == 6) {
    //     if (int.tryParse(input.split('-').join()) != null) {
    //       return right(input);
    //     }
    //   }
    // }
    return left(StringFailure.invalidDate(failedValue: input));
  }
}
