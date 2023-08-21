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
  UniqueString get userID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcardModel flashcard)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
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
  $Res call({UniqueString userID});
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
    Object? userID = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
    ) as $Val);
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
  $Res call({UniqueString userID, HadithFlashcardModel flashcard});

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
    Object? userID = null,
    Object? flashcard = null,
  }) {
    return _then(_$_SaveFlashcard(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as HadithFlashcardModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HadithFlashcardModelCopyWith<$Res> get flashcard {
    return $HadithFlashcardModelCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value));
    });
  }
}

/// @nodoc

class _$_SaveFlashcard implements _SaveFlashcard {
  const _$_SaveFlashcard({required this.userID, required this.flashcard});

  @override
  final UniqueString userID;
  @override
  final HadithFlashcardModel flashcard;

  @override
  String toString() {
    return 'HadithFlashcardEvent.saveFlashcard(userID: $userID, flashcard: $flashcard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveFlashcard &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, flashcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveFlashcardCopyWith<_$_SaveFlashcard> get copyWith =>
      __$$_SaveFlashcardCopyWithImpl<_$_SaveFlashcard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcardModel flashcard)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
  }) {
    return saveFlashcard(userID, flashcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
  }) {
    return saveFlashcard?.call(userID, flashcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    required TResult orElse(),
  }) {
    if (saveFlashcard != null) {
      return saveFlashcard(userID, flashcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
  }) {
    return saveFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
  }) {
    return saveFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
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
      {required final UniqueString userID,
      required final HadithFlashcardModel flashcard}) = _$_SaveFlashcard;

  @override
  UniqueString get userID;
  HadithFlashcardModel get flashcard;
  @override
  @JsonKey(ignore: true)
  _$$_SaveFlashcardCopyWith<_$_SaveFlashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetFlashcardCopyWith<$Res>
    implements $HadithFlashcardEventCopyWith<$Res> {
  factory _$$_GetFlashcardCopyWith(
          _$_GetFlashcard value, $Res Function(_$_GetFlashcard) then) =
      __$$_GetFlashcardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueString userID});
}

/// @nodoc
class __$$_GetFlashcardCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$_GetFlashcard>
    implements _$$_GetFlashcardCopyWith<$Res> {
  __$$_GetFlashcardCopyWithImpl(
      _$_GetFlashcard _value, $Res Function(_$_GetFlashcard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$_GetFlashcard(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
    ));
  }
}

/// @nodoc

class _$_GetFlashcard implements _GetFlashcard {
  const _$_GetFlashcard({required this.userID});

  @override
  final UniqueString userID;

  @override
  String toString() {
    return 'HadithFlashcardEvent.getFlashcard(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFlashcard &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFlashcardCopyWith<_$_GetFlashcard> get copyWith =>
      __$$_GetFlashcardCopyWithImpl<_$_GetFlashcard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcardModel flashcard)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
  }) {
    return getFlashcard(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
  }) {
    return getFlashcard?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueString userID, HadithFlashcardModel flashcard)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    required TResult orElse(),
  }) {
    if (getFlashcard != null) {
      return getFlashcard(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
  }) {
    return getFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
  }) {
    return getFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    required TResult orElse(),
  }) {
    if (getFlashcard != null) {
      return getFlashcard(this);
    }
    return orElse();
  }
}

abstract class _GetFlashcard implements HadithFlashcardEvent {
  const factory _GetFlashcard({required final UniqueString userID}) =
      _$_GetFlashcard;

  @override
  UniqueString get userID;
  @override
  @JsonKey(ignore: true)
  _$$_GetFlashcardCopyWith<_$_GetFlashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HadithFlashcardState {
  Option<Either<CommonFailures, Unit>>
      get optionFailureOrSaveFlashcardSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<CommonFailures, IList<HadithFlashcard>>>
      get optionFailureOrGetFlashcardSuccess =>
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
  $Res call(
      {Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcardSuccess,
      Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcardSuccess});
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
    Object? optionFailureOrSaveFlashcardSuccess = null,
    Object? optionFailureOrGetFlashcardSuccess = null,
  }) {
    return _then(_value.copyWith(
      optionFailureOrSaveFlashcardSuccess: null ==
              optionFailureOrSaveFlashcardSuccess
          ? _value.optionFailureOrSaveFlashcardSuccess
          : optionFailureOrSaveFlashcardSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrGetFlashcardSuccess: null ==
              optionFailureOrGetFlashcardSuccess
          ? _value.optionFailureOrGetFlashcardSuccess
          : optionFailureOrGetFlashcardSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, IList<HadithFlashcard>>>,
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
  $Res call(
      {Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcardSuccess,
      Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcardSuccess});
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
    Object? optionFailureOrSaveFlashcardSuccess = null,
    Object? optionFailureOrGetFlashcardSuccess = null,
  }) {
    return _then(_$_HadithFlashcardState(
      optionFailureOrSaveFlashcardSuccess: null ==
              optionFailureOrSaveFlashcardSuccess
          ? _value.optionFailureOrSaveFlashcardSuccess
          : optionFailureOrSaveFlashcardSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrGetFlashcardSuccess: null ==
              optionFailureOrGetFlashcardSuccess
          ? _value.optionFailureOrGetFlashcardSuccess
          : optionFailureOrGetFlashcardSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, IList<HadithFlashcard>>>,
    ));
  }
}

/// @nodoc

class _$_HadithFlashcardState implements _HadithFlashcardState {
  const _$_HadithFlashcardState(
      {required this.optionFailureOrSaveFlashcardSuccess,
      required this.optionFailureOrGetFlashcardSuccess});

  @override
  final Option<Either<CommonFailures, Unit>>
      optionFailureOrSaveFlashcardSuccess;
  @override
  final Option<Either<CommonFailures, IList<HadithFlashcard>>>
      optionFailureOrGetFlashcardSuccess;

  @override
  String toString() {
    return 'HadithFlashcardState(optionFailureOrSaveFlashcardSuccess: $optionFailureOrSaveFlashcardSuccess, optionFailureOrGetFlashcardSuccess: $optionFailureOrGetFlashcardSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HadithFlashcardState &&
            (identical(other.optionFailureOrSaveFlashcardSuccess,
                    optionFailureOrSaveFlashcardSuccess) ||
                other.optionFailureOrSaveFlashcardSuccess ==
                    optionFailureOrSaveFlashcardSuccess) &&
            (identical(other.optionFailureOrGetFlashcardSuccess,
                    optionFailureOrGetFlashcardSuccess) ||
                other.optionFailureOrGetFlashcardSuccess ==
                    optionFailureOrGetFlashcardSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      optionFailureOrSaveFlashcardSuccess, optionFailureOrGetFlashcardSuccess);

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
          optionFailureOrSaveFlashcardSuccess,
      required final Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcardSuccess}) = _$_HadithFlashcardState;

  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrSaveFlashcardSuccess;
  @override
  Option<Either<CommonFailures, IList<HadithFlashcard>>>
      get optionFailureOrGetFlashcardSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_HadithFlashcardStateCopyWith<_$_HadithFlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}
