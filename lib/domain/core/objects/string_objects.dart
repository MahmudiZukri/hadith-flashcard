part of 'objects.dart';

@immutable
abstract class StringObject {
  const StringObject();

  Either<StringFailure, String> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedStringError(f), id);
  }

  String? getOrNull() {
    return value.fold((f) => null, id);
  }

  String getOrEmpty() {
    return value.fold((f) => '', id);
  }

  Either<StringFailure, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StringObject && other.value == value;
  }

  @override
  String toString() => 'Value($value)';

  @override
  int get hashCode => value.hashCode;

  String getOrFailureText() => value.fold(
      (f) => f.maybeMap(
          empty: (_) => "Something went wrong (Empty value)",
          hasWhitespace: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Has Whitespace"
              : 'Has Whitespace',
          isNotAlphanumeric: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Is Not Alphanumeric"
              : 'Is Not Alphanumeric',
          lengthTooShort: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Length Too Short"
              : 'Length Too Short',
          exceedingLength: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Exceeding Length"
              : 'Exceeding Length',
          wrongLength: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Wrong Length"
              : 'Wrong Length',
          invalidEmail: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Invalid Email"
              : 'Invalid Email',
          invalidPersonName: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Invalid PersonName"
              : 'Invalid PersonName',
          invalidPhone: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Has Whitespace"
              : 'Has Whitespace',
          confirmationNotMatch: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Confirmation Not Match"
              : 'Confirmation Not Match',
          invalidUrl: (s) => s.failedValue != null
              ? "(${s.failedValue!}) Invalid Url"
              : 'Invalid Url',
          orElse: () {
            throw 'Only accept String Object';
          }),
      id);

  String? getFoldValidator({
    bool exceptEmpty = false,
  }) =>
      value.fold(
        //use maybe map for now
        (l) => l.maybeMap(
          empty: (_) => exceptEmpty ? null : 'thisCannotBeEmpty'.tr(),
          invalidEmail: (_) => 'invalidEmailFormat'.tr(),
          lengthTooShort: (_) => 'lengthIsTooShort'.tr(),
          invalidPersonName: (_) => 'nameCannotBeFilledWithNumbers'.tr(),
          orElse: () => 'String Failure OR ELSE',
        ),
        (_) => null,
      );

  //old localization version
  // String? getFoldValidator(
  //   BuildContext context, {
  //   bool exceptEmpty = false,
  // }) =>
  //     value.fold(
  //       (l) => l.map(
  //         empty: (_) => exceptEmpty ? null : S.of(context).textFieldRequired,
  //         invalidDate: (_) => S.of(context).validationFieldInvalidDate,
  //         invalidTime: (_) => S.of(context).validationFieldInvalidTime,
  //         isNotAlphanumeric: (_) =>
  //             S.of(context).validationFieldMustBeAlphanumeric,
  //         hasWhitespace: (_) => S.of(context).validationFieldHasWhitespace,
  //         exceedingLength: (a) =>
  //             S.of(context).validationFieldExceedingLength(a.max),
  //         lengthTooShort: (a) =>
  //             S.of(context).validationFieldLengthTooShort(a.min),
  //         wrongLength: (a) =>
  //             S.of(context).validationFieldWrongLength(a.length),
  //         multiline: (_) => S.of(context).validationFieldMultiline,
  //         confirmationNotMatch: (_) =>
  //             S.of(context).validationFieldConfirmationNotMatch,
  //         invalidPhone: (_) => S.of(context).validationFieldInvalidPhoneNumber,
  //         invalidEmail: (_) => S.of(context).validationFieldInvalidEmail,
  //         invalidDateTime: (_) => S.of(context).validationFieldInvalidDate,
  //         invalidPersonName: (_) =>
  //             S.of(context).validationFieldInvalidPersonName,
  //         shortToken: (_) => S.of(context).validationFieldShortToken,
  //         invalidUrl: (_) => S.of(context).validationFieldInvalidURL,
  //         invalidSKU: (_) => S.of(context).validationFieldInvalidSKU,
  //         invalidEnakTableQrUrl: (_) =>
  //             S.of(context).validationFieldInvalidEnakTableQR,
  //         invalidCvsayaAttendanceQrUrl: (_) =>
  //             S.of(context).validationFieldInvalidCvsayaAttendanceQR,
  //       ),
  //       (r) => null,
  //     );
}

class Time extends StringObject {
  @override
  final Either<StringFailure, String> value;

  Either<StringFailure, DateTime> get dateTime {
    return value.fold(
      (l) => left(l),
      (r) {
        final hour = int.tryParse(r.split(':')[0])!;
        final minute = int.tryParse(r.split(':')[1])!;
        final second = int.tryParse(r.split(':')[2])!;
        final nowDate = DateTime.now();
        return right(
          DateTime(
            nowDate.year,
            nowDate.month,
            nowDate.day,
            hour,
            minute,
            second,
          ),
        );
      },
    );
  }

  DateTime dateTimeOrCrash() {
    // id = identity - same as writing (right) => right
    return dateTime.fold((l) => throw UnexpectedStringError(l), (r) => r);
  }

  factory Time(String input) {
    return Time._(
      StringValidators.validateStringNotEmpty(input)
          .flatMap(StringValidators.validateTime),
    );
  }

  const Time._(this.value);
}

class Date extends StringObject {
  @override
  final Either<StringFailure, String> value;

  Either<StringFailure, DateTime> get dateTime {
    return value.fold(
      (l) => left(l),
      (r) {
        final dateTime = DateTime.parse(r);
        return right(dateTime);
      },
    );
  }

  DateTime dateTimeOrCrash() {
    // id = identity - same as writing (right) => right
    return dateTime.fold((l) => throw UnexpectedStringError(l), (r) => r);
  }

  factory Date(String input) {
    return Date._(
      StringValidators.validateStringNotEmpty(input)
          .flatMap(StringValidators.validateDate),
    );
  }

  const Date._(this.value);
}

class TimeOnly extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory TimeOnly(DateTime? input) {
    if (input == null) {
      return TimeOnly._(StringValidators.validateStringNotEmpty(''));
    } else {
      return TimeOnly._(
          StringValidators.validateDateWithTime(input, "HH:mm:ss"));
    }
  }

  const TimeOnly._(this.value);
}

class UnemptyString extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory UnemptyString(String input) {
    return UnemptyString._(StringValidators.validateStringNotEmpty(input));
  }

  factory UnemptyString.empty() => UnemptyString('');

  const UnemptyString._(this.value);
}

class ReferralCode extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory ReferralCode(String input) {
    return ReferralCode._(
      StringValidators.validateIsAlphanumeric(input).fold(
        (l) => left(l),
        (r) => StringValidators.validateMinStringLength(r, 5).fold(
          (l) => left(l),
          (r) => StringValidators.validateMaxStringLength(r, 10),
        ),
      ),
    );
  }

  factory ReferralCode.empty() => ReferralCode('');

  const ReferralCode._(this.value);
}

class UniqueString extends StringObject {
  @override
  final Either<StringFailure, String> value;

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  // factory UniqueString() {
  //   return UniqueString._(
  //     right(const Uuid().v1()),
  //   );
  // }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueString.fromUniqueString(String uniqueIdStr) {
    return UniqueString._(
      right(uniqueIdStr),
    );
  }
  factory UniqueString.empty() {
    return UniqueString._(left(const StringFailure.empty(failedValue: '')));
  }

  const UniqueString._(this.value);
}

class PhoneNumber extends StringObject {
  @override
  final Either<StringFailure, String> value;

  final String formattedCountryCodeText;
  final String formattedStartsWithZeroText;

  factory PhoneNumber(String input) {
    String filteredInput = input;
    if (filteredInput.startsWith('0')) {
      filteredInput = filteredInput.substring(1);
    }
    if (filteredInput.startsWith('+62')) {
      filteredInput = filteredInput.substring(3);
    }

    return PhoneNumber._(
      StringValidators.validatePhone(filteredInput),
      '+62$filteredInput',
      '0$filteredInput',
    );
  }

  const PhoneNumber._(
    this.value,
    this.formattedCountryCodeText,
    this.formattedStartsWithZeroText,
  );
}

class UrlAddress extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory UrlAddress(String input) {
    return UrlAddress._(StringValidators.validateStringNotEmpty(input)
        .flatMap(StringValidators.validateUrl));
  }

  const UrlAddress._(this.value);
}

class PersonName extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory PersonName(String input) {
    return PersonName._(
      StringValidators.validateStringNotEmpty(input.trim()).flatMap(
        StringValidators.validatePersonName,
      ),
    );
  }

  factory PersonName.empty() => PersonName('');

  const PersonName._(this.value);
}

class EmailAddress extends StringObject {
  @override
  final Either<StringFailure, String> value;

  final String censoredText;

  factory EmailAddress(String input) {
    String cencoredEmail = input;
    final int indexOfAtSign = input.indexOf('@');

    if (indexOfAtSign == 3) {
      cencoredEmail =
          '${input.substring(0, 1)}****${input.substring(indexOfAtSign - 1)}';
    } else if (indexOfAtSign > 3) {
      cencoredEmail =
          '${input.substring(0, 1)}****${input.substring(indexOfAtSign - 2)}';
    }

    return EmailAddress._(
      StringValidators.validateStringNotEmpty(input).flatMap(
        StringValidators.validateEmail,
      ),
      cencoredEmail,
    );
  }

  factory EmailAddress.empty() => EmailAddress('');

  const EmailAddress._(this.value, this.censoredText);
}

class Password extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory Password(String input) {
    return Password._(
      StringValidators.validatePassword(
        input,
      ),
    );
  }

  factory Password.empty() => Password('');

  const Password._(this.value);
}

class DateOnly extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory DateOnly(DateTime? input) {
    if (input == null) {
      return DateOnly._(StringValidators.validateStringNotEmpty(''));
    } else {
      return DateOnly._(
          StringValidators.validateDateWithTime(input, "dd/M/yyyy"));
    }
  }

  const DateOnly._(this.value);
}

class HourOnly extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory HourOnly(DateTime? input) {
    if (input == null) {
      return HourOnly._(StringValidators.validateStringNotEmpty(''));
    } else {
      return HourOnly._(StringValidators.validateDateWithTime(input, "HH:mm"));
    }
  }

  const HourOnly._(this.value);
}

class DateWithTime extends StringObject {
  @override
  final Either<StringFailure, String> value;

  factory DateWithTime(String? input) {
    if (input == null) {
      return DateWithTime._(StringValidators.validateStringNotEmpty(''));
    } else {
      final DateTime value = DateFormat("dd/M/yyyy hh:mm").parse(input);
      return DateWithTime._(
          StringValidators.validateDateWithTime(value, "yyyy-MM-dd hh:mm:ss"));
    }
  }

  const DateWithTime._(this.value);
}
