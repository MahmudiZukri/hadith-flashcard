// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_flashcard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HadithFlashcardEvent {
  UniqueString get userId => throw _privateConstructorUsedError;
  HadithFlashcardModel get flashcard => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userId, HadithFlashcardModel flashcard)
        saveFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueString userId, HadithFlashcardModel flashcard)?
        saveFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueString userId, HadithFlashcardModel flashcard)?
        saveFlashcard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HadithFlashcardEventCopyWith<HadithFlashcardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithFlashcardEventCopyWith<$Res> {
  factory $HadithFlashcardEventCopyWith(HadithFlashcardEvent value,
          $Res Function(HadithFlashcardEvent) then) =
      _$HadithFlashcardEventCopyWithImpl<$Res, HadithFlashcardEvent>;
  @useResult
  $Res call({UniqueString userId, HadithFlashcardModel flashcard});

  $HadithFlashcardModelCopyWith<$Res> get flashcard;
}

/// @nodoc
class _$HadithFlashcardEventCopyWithImpl<$Res,
        $Val extends HadithFlashcardEvent>
    implements $HadithFlashcardEventCopyWith<$Res> {
  _$HadithFlashcardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? flashcard = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as HadithFlashcardModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HadithFlashcardModelCopyWith<$Res> get flashcard {
    return $HadithFlashcardModelCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SaveFlashcardCopyWith<$Res>
    implements $HadithFlashcardEventCopyWith<$Res> {
  factory _$$_SaveFlashcardCopyWith(
          _$_SaveFlashcard value, $Res Function(_$_SaveFlashcard) then) =
      __$$_SaveFlashcardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueString userId, HadithFlashcardModel flashcard});

  @override
  $HadithFlashcardModelCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$_SaveFlashcardCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$_SaveFlashcard>
    implements _$$_SaveFlashcardCopyWith<$Res> {
  __$$_SaveFlashcardCopyWithImpl(
      _$_SaveFlashcard _value, $Res Function(_$_SaveFlashcard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? flashcard = null,
  }) {
    return _then(_$_SaveFlashcard(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as HadithFlashcardModel,
    ));
  }
}

/// @nodoc

class _$_SaveFlashcard implements _SaveFlashcard {
  const _$_SaveFlashcard({required this.userId, required this.flashcard});

  @override
  final UniqueString userId;
  @override
  final HadithFlashcardModel flashcard;

  @override
  String toString() {
    return 'HadithFlashcardEvent.saveFlashcard(userId: $userId, flashcard: $flashcard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveFlashcard &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, flashcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveFlashcardCopyWith<_$_SaveFlashcard> get copyWith =>
      __$$_SaveFlashcardCopyWithImpl<_$_SaveFlashcard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userId, HadithFlashcardModel flashcard)
        saveFlashcard,
  }) {
    return saveFlashcard(userId, flashcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueString userId, HadithFlashcardModel flashcard)?
        saveFlashcard,
  }) {
    return saveFlashcard?.call(userId, flashcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueString userId, HadithFlashcardModel flashcard)?
        saveFlashcard,
    required TResult orElse(),
  }) {
    if (saveFlashcard != null) {
      return saveFlashcard(userId, flashcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
  }) {
    return saveFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
  }) {
    return saveFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    required TResult orElse(),
  }) {
    if (saveFlashcard != null) {
      return saveFlashcard(this);
    }
    return orElse();
  }
}

abstract class _SaveFlashcard implements HadithFlashcardEvent {
  const factory _SaveFlashcard(
      {required final UniqueString userId,
      required final HadithFlashcardModel flashcard}) = _$_SaveFlashcard;

  @override
  UniqueString get userId;
  @override
  HadithFlashcardModel get flashcard;
  @override
  @JsonKey(ignore: true)
  _$$_SaveFlashcardCopyWith<_$_SaveFlashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HadithFlashcardState {
  Option<Either<CommonFailures, Unit>> get optionFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HadithFlashcardStateCopyWith<HadithFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithFlashcardStateCopyWith<$Res> {
  factory $HadithFlashcardStateCopyWith(HadithFlashcardState value,
          $Res Function(HadithFlashcardState) then) =
      _$HadithFlashcardStateCopyWithImpl<$Res, HadithFlashcardState>;
  @useResult
  $Res call({Option<Either<CommonFailures, Unit>> optionFailureOrSuccess});
}

/// @nodoc
class _$HadithFlashcardStateCopyWithImpl<$Res,
        $Val extends HadithFlashcardState>
    implements $HadithFlashcardStateCopyWith<$Res> {
  _$HadithFlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HadithFlashcardStateCopyWith<$Res>
    implements $HadithFlashcardStateCopyWith<$Res> {
  factory _$$_HadithFlashcardStateCopyWith(_$_HadithFlashcardState value,
          $Res Function(_$_HadithFlashcardState) then) =
      __$$_HadithFlashcardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<CommonFailures, Unit>> optionFailureOrSuccess});
}

/// @nodoc
class __$$_HadithFlashcardStateCopyWithImpl<$Res>
    extends _$HadithFlashcardStateCopyWithImpl<$Res, _$_HadithFlashcardState>
    implements _$$_HadithFlashcardStateCopyWith<$Res> {
  __$$_HadithFlashcardStateCopyWithImpl(_$_HadithFlashcardState _value,
      $Res Function(_$_HadithFlashcardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_$_HadithFlashcardState(
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HadithFlashcardState implements _HadithFlashcardState {
  const _$_HadithFlashcardState({required this.optionFailureOrSuccess});

  @override
  final Option<Either<CommonFailures, Unit>> optionFailureOrSuccess;

  @override
  String toString() {
    return 'HadithFlashcardState(optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithFlashcardState &&
            (identical(other.optionFailureOrSuccess, optionFailureOrSuccess) ||
                other.optionFailureOrSuccess == optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HadithFlashcardStateCopyWith<_$_HadithFlashcardState> get copyWith =>
      __$$_HadithFlashcardStateCopyWithImpl<_$_HadithFlashcardState>(
          this, _$identity);
}

abstract class _HadithFlashcardState implements HadithFlashcardState {
  const factory _HadithFlashcardState(
      {required final Option<Either<CommonFailures, Unit>>
          optionFailureOrSuccess}) = _$_HadithFlashcardState;

  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_HadithFlashcardStateCopyWith<_$_HadithFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}
