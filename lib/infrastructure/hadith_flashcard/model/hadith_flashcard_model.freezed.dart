// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_flashcard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HadithFlashcardModel _$HadithFlashcardModelFromJson(Map<String, dynamic> json) {
  return _HadithFlashcardModel.fromJson(json);
}

/// @nodoc
mixin _$HadithFlashcardModel {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  DateTime get reviewedDate => throw _privateConstructorUsedError;
  int? get interval => throw _privateConstructorUsedError;
  int? get repetition => throw _privateConstructorUsedError;
  double? get easeFactor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HadithFlashcardModelCopyWith<HadithFlashcardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithFlashcardModelCopyWith<$Res> {
  factory $HadithFlashcardModelCopyWith(HadithFlashcardModel value,
          $Res Function(HadithFlashcardModel) then) =
      _$HadithFlashcardModelCopyWithImpl<$Res, HadithFlashcardModel>;
  @useResult
  $Res call(
      {String question,
      String answer,
      String translation,
      DateTime reviewedDate,
      int? interval,
      int? repetition,
      double? easeFactor});
}

/// @nodoc
class _$HadithFlashcardModelCopyWithImpl<$Res,
        $Val extends HadithFlashcardModel>
    implements $HadithFlashcardModelCopyWith<$Res> {
  _$HadithFlashcardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? translation = null,
    Object? reviewedDate = null,
    Object? interval = freezed,
    Object? repetition = freezed,
    Object? easeFactor = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedDate: null == reviewedDate
          ? _value.reviewedDate
          : reviewedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int?,
      easeFactor: freezed == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HadithFlashcardModelCopyWith<$Res>
    implements $HadithFlashcardModelCopyWith<$Res> {
  factory _$$_HadithFlashcardModelCopyWith(_$_HadithFlashcardModel value,
          $Res Function(_$_HadithFlashcardModel) then) =
      __$$_HadithFlashcardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String answer,
      String translation,
      DateTime reviewedDate,
      int? interval,
      int? repetition,
      double? easeFactor});
}

/// @nodoc
class __$$_HadithFlashcardModelCopyWithImpl<$Res>
    extends _$HadithFlashcardModelCopyWithImpl<$Res, _$_HadithFlashcardModel>
    implements _$$_HadithFlashcardModelCopyWith<$Res> {
  __$$_HadithFlashcardModelCopyWithImpl(_$_HadithFlashcardModel _value,
      $Res Function(_$_HadithFlashcardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? translation = null,
    Object? reviewedDate = null,
    Object? interval = freezed,
    Object? repetition = freezed,
    Object? easeFactor = freezed,
  }) {
    return _then(_$_HadithFlashcardModel(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      reviewedDate: null == reviewedDate
          ? _value.reviewedDate
          : reviewedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int?,
      easeFactor: freezed == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HadithFlashcardModel implements _HadithFlashcardModel {
  const _$_HadithFlashcardModel(
      {required this.question,
      required this.answer,
      required this.translation,
      required this.reviewedDate,
      this.interval,
      this.repetition,
      this.easeFactor});

  factory _$_HadithFlashcardModel.fromJson(Map<String, dynamic> json) =>
      _$$_HadithFlashcardModelFromJson(json);

  @override
  final String question;
  @override
  final String answer;
  @override
  final String translation;
  @override
  final DateTime reviewedDate;
  @override
  final int? interval;
  @override
  final int? repetition;
  @override
  final double? easeFactor;

  @override
  String toString() {
    return 'HadithFlashcardModel(question: $question, answer: $answer, translation: $translation, reviewedDate: $reviewedDate, interval: $interval, repetition: $repetition, easeFactor: $easeFactor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithFlashcardModel &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.reviewedDate, reviewedDate) ||
                other.reviewedDate == reviewedDate) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer, translation,
      reviewedDate, interval, repetition, easeFactor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithFlashcardModelCopyWith<_$_HadithFlashcardModel> get copyWith =>
      __$$_HadithFlashcardModelCopyWithImpl<_$_HadithFlashcardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HadithFlashcardModelToJson(
      this,
    );
  }
}

abstract class _HadithFlashcardModel implements HadithFlashcardModel {
  const factory _HadithFlashcardModel(
      {required final String question,
      required final String answer,
      required final String translation,
      required final DateTime reviewedDate,
      final int? interval,
      final int? repetition,
      final double? easeFactor}) = _$_HadithFlashcardModel;

  factory _HadithFlashcardModel.fromJson(Map<String, dynamic> json) =
      _$_HadithFlashcardModel.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  String get translation;
  @override
  DateTime get reviewedDate;
  @override
  int? get interval;
  @override
  int? get repetition;
  @override
  double? get easeFactor;
  @override
  @JsonKey(ignore: true)
  _$$_HadithFlashcardModelCopyWith<_$_HadithFlashcardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
