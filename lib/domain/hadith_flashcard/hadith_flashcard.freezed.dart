// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_flashcard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HadithFlashcard {
  UnemptyString get question => throw _privateConstructorUsedError;
  UnemptyString get answer => throw _privateConstructorUsedError;
  PositiveNumber get interval => throw _privateConstructorUsedError;
  int get repetition => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  DateTime get reviewedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HadithFlashcardCopyWith<HadithFlashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithFlashcardCopyWith<$Res> {
  factory $HadithFlashcardCopyWith(
          HadithFlashcard value, $Res Function(HadithFlashcard) then) =
      _$HadithFlashcardCopyWithImpl<$Res, HadithFlashcard>;
  @useResult
  $Res call(
      {UnemptyString question,
      UnemptyString answer,
      PositiveNumber interval,
      int repetition,
      double easeFactor,
      DateTime reviewedDate});
}

/// @nodoc
class _$HadithFlashcardCopyWithImpl<$Res, $Val extends HadithFlashcard>
    implements $HadithFlashcardCopyWith<$Res> {
  _$HadithFlashcardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? interval = null,
    Object? repetition = null,
    Object? easeFactor = null,
    Object? reviewedDate = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      reviewedDate: null == reviewedDate
          ? _value.reviewedDate
          : reviewedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HadithNarratorCopyWith<$Res>
    implements $HadithFlashcardCopyWith<$Res> {
  factory _$$_HadithNarratorCopyWith(
          _$_HadithNarrator value, $Res Function(_$_HadithNarrator) then) =
      __$$_HadithNarratorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UnemptyString question,
      UnemptyString answer,
      PositiveNumber interval,
      int repetition,
      double easeFactor,
      DateTime reviewedDate});
}

/// @nodoc
class __$$_HadithNarratorCopyWithImpl<$Res>
    extends _$HadithFlashcardCopyWithImpl<$Res, _$_HadithNarrator>
    implements _$$_HadithNarratorCopyWith<$Res> {
  __$$_HadithNarratorCopyWithImpl(
      _$_HadithNarrator _value, $Res Function(_$_HadithNarrator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? interval = null,
    Object? repetition = null,
    Object? easeFactor = null,
    Object? reviewedDate = null,
  }) {
    return _then(_$_HadithNarrator(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      reviewedDate: null == reviewedDate
          ? _value.reviewedDate
          : reviewedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HadithNarrator implements _HadithNarrator {
  const _$_HadithNarrator(
      {required this.question,
      required this.answer,
      required this.interval,
      required this.repetition,
      required this.easeFactor,
      required this.reviewedDate});

  @override
  final UnemptyString question;
  @override
  final UnemptyString answer;
  @override
  final PositiveNumber interval;
  @override
  final int repetition;
  @override
  final double easeFactor;
  @override
  final DateTime reviewedDate;

  @override
  String toString() {
    return 'HadithFlashcard(question: $question, answer: $answer, interval: $interval, repetition: $repetition, easeFactor: $easeFactor, reviewedDate: $reviewedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithNarrator &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.reviewedDate, reviewedDate) ||
                other.reviewedDate == reviewedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer, interval,
      repetition, easeFactor, reviewedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithNarratorCopyWith<_$_HadithNarrator> get copyWith =>
      __$$_HadithNarratorCopyWithImpl<_$_HadithNarrator>(this, _$identity);
}

abstract class _HadithNarrator implements HadithFlashcard {
  const factory _HadithNarrator(
      {required final UnemptyString question,
      required final UnemptyString answer,
      required final PositiveNumber interval,
      required final int repetition,
      required final double easeFactor,
      required final DateTime reviewedDate}) = _$_HadithNarrator;

  @override
  UnemptyString get question;
  @override
  UnemptyString get answer;
  @override
  PositiveNumber get interval;
  @override
  int get repetition;
  @override
  double get easeFactor;
  @override
  DateTime get reviewedDate;
  @override
  @JsonKey(ignore: true)
  _$$_HadithNarratorCopyWith<_$_HadithNarrator> get copyWith =>
      throw _privateConstructorUsedError;
}