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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithFlashcardEventCopyWith<$Res> {
  factory $HadithFlashcardEventCopyWith(HadithFlashcardEvent value,
          $Res Function(HadithFlashcardEvent) then) =
      _$HadithFlashcardEventCopyWithImpl<$Res, HadithFlashcardEvent>;
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
}

/// @nodoc
abstract class _$$SaveFlashcardImplCopyWith<$Res> {
  factory _$$SaveFlashcardImplCopyWith(
          _$SaveFlashcardImpl value, $Res Function(_$SaveFlashcardImpl) then) =
      __$$SaveFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueString userID, HadithFlashcard flashcard, int? quality});

  $HadithFlashcardCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$SaveFlashcardImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$SaveFlashcardImpl>
    implements _$$SaveFlashcardImplCopyWith<$Res> {
  __$$SaveFlashcardImplCopyWithImpl(
      _$SaveFlashcardImpl _value, $Res Function(_$SaveFlashcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? flashcard = null,
    Object? quality = freezed,
  }) {
    return _then(_$SaveFlashcardImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as HadithFlashcard,
      quality: freezed == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HadithFlashcardCopyWith<$Res> get flashcard {
    return $HadithFlashcardCopyWith<$Res>(_value.flashcard, (value) {
      return _then(_value.copyWith(flashcard: value));
    });
  }
}

/// @nodoc

class _$SaveFlashcardImpl implements _SaveFlashcard {
  const _$SaveFlashcardImpl(
      {required this.userID, required this.flashcard, this.quality});

  @override
  final UniqueString userID;
  @override
  final HadithFlashcard flashcard;
  @override
  final int? quality;

  @override
  String toString() {
    return 'HadithFlashcardEvent.saveFlashcard(userID: $userID, flashcard: $flashcard, quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFlashcardImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard) &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, flashcard, quality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFlashcardImplCopyWith<_$SaveFlashcardImpl> get copyWith =>
      __$$SaveFlashcardImplCopyWithImpl<_$SaveFlashcardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
  }) {
    return saveFlashcard(userID, flashcard, quality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
  }) {
    return saveFlashcard?.call(userID, flashcard, quality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    required TResult orElse(),
  }) {
    if (saveFlashcard != null) {
      return saveFlashcard(userID, flashcard, quality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
  }) {
    return saveFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
  }) {
    return saveFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
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
      required final HadithFlashcard flashcard,
      final int? quality}) = _$SaveFlashcardImpl;

  UniqueString get userID;
  HadithFlashcard get flashcard;
  int? get quality;
  @JsonKey(ignore: true)
  _$$SaveFlashcardImplCopyWith<_$SaveFlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFlashcardImplCopyWith<$Res> {
  factory _$$GetFlashcardImplCopyWith(
          _$GetFlashcardImpl value, $Res Function(_$GetFlashcardImpl) then) =
      __$$GetFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueString userID});
}

/// @nodoc
class __$$GetFlashcardImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$GetFlashcardImpl>
    implements _$$GetFlashcardImplCopyWith<$Res> {
  __$$GetFlashcardImplCopyWithImpl(
      _$GetFlashcardImpl _value, $Res Function(_$GetFlashcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$GetFlashcardImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
    ));
  }
}

/// @nodoc

class _$GetFlashcardImpl implements _GetFlashcard {
  const _$GetFlashcardImpl({required this.userID});

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
            other is _$GetFlashcardImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFlashcardImplCopyWith<_$GetFlashcardImpl> get copyWith =>
      __$$GetFlashcardImplCopyWithImpl<_$GetFlashcardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
  }) {
    return getFlashcard(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
  }) {
    return getFlashcard?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
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
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
  }) {
    return getFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
  }) {
    return getFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
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
      _$GetFlashcardImpl;

  UniqueString get userID;
  @JsonKey(ignore: true)
  _$$GetFlashcardImplCopyWith<_$GetFlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetFlashcardSnackBarImplCopyWith<$Res> {
  factory _$$ResetFlashcardSnackBarImplCopyWith(
          _$ResetFlashcardSnackBarImpl value,
          $Res Function(_$ResetFlashcardSnackBarImpl) then) =
      __$$ResetFlashcardSnackBarImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFlashcardSnackBarImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res,
        _$ResetFlashcardSnackBarImpl>
    implements _$$ResetFlashcardSnackBarImplCopyWith<$Res> {
  __$$ResetFlashcardSnackBarImplCopyWithImpl(
      _$ResetFlashcardSnackBarImpl _value,
      $Res Function(_$ResetFlashcardSnackBarImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetFlashcardSnackBarImpl implements _ResetFlashcardSnackBar {
  const _$ResetFlashcardSnackBarImpl();

  @override
  String toString() {
    return 'HadithFlashcardEvent.resetFlashcardSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetFlashcardSnackBarImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
  }) {
    return resetFlashcardSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
  }) {
    return resetFlashcardSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    required TResult orElse(),
  }) {
    if (resetFlashcardSnackBar != null) {
      return resetFlashcardSnackBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
  }) {
    return resetFlashcardSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
  }) {
    return resetFlashcardSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    required TResult orElse(),
  }) {
    if (resetFlashcardSnackBar != null) {
      return resetFlashcardSnackBar(this);
    }
    return orElse();
  }
}

abstract class _ResetFlashcardSnackBar implements HadithFlashcardEvent {
  const factory _ResetFlashcardSnackBar() = _$ResetFlashcardSnackBarImpl;
}

/// @nodoc
abstract class _$$ResetFlashcardClarificationImplCopyWith<$Res> {
  factory _$$ResetFlashcardClarificationImplCopyWith(
          _$ResetFlashcardClarificationImpl value,
          $Res Function(_$ResetFlashcardClarificationImpl) then) =
      __$$ResetFlashcardClarificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isShowClarification});
}

/// @nodoc
class __$$ResetFlashcardClarificationImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res,
        _$ResetFlashcardClarificationImpl>
    implements _$$ResetFlashcardClarificationImplCopyWith<$Res> {
  __$$ResetFlashcardClarificationImplCopyWithImpl(
      _$ResetFlashcardClarificationImpl _value,
      $Res Function(_$ResetFlashcardClarificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowClarification = null,
  }) {
    return _then(_$ResetFlashcardClarificationImpl(
      isShowClarification: null == isShowClarification
          ? _value.isShowClarification
          : isShowClarification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResetFlashcardClarificationImpl
    implements _ResetFlashcardClarification {
  const _$ResetFlashcardClarificationImpl({required this.isShowClarification});

  @override
  final bool isShowClarification;

  @override
  String toString() {
    return 'HadithFlashcardEvent.resetFlashcardClarification(isShowClarification: $isShowClarification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetFlashcardClarificationImpl &&
            (identical(other.isShowClarification, isShowClarification) ||
                other.isShowClarification == isShowClarification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowClarification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetFlashcardClarificationImplCopyWith<_$ResetFlashcardClarificationImpl>
      get copyWith => __$$ResetFlashcardClarificationImplCopyWithImpl<
          _$ResetFlashcardClarificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
  }) {
    return resetFlashcardClarification(isShowClarification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
  }) {
    return resetFlashcardClarification?.call(isShowClarification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    required TResult orElse(),
  }) {
    if (resetFlashcardClarification != null) {
      return resetFlashcardClarification(isShowClarification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
  }) {
    return resetFlashcardClarification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
  }) {
    return resetFlashcardClarification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    required TResult orElse(),
  }) {
    if (resetFlashcardClarification != null) {
      return resetFlashcardClarification(this);
    }
    return orElse();
  }
}

abstract class _ResetFlashcardClarification implements HadithFlashcardEvent {
  const factory _ResetFlashcardClarification(
          {required final bool isShowClarification}) =
      _$ResetFlashcardClarificationImpl;

  bool get isShowClarification;
  @JsonKey(ignore: true)
  _$$ResetFlashcardClarificationImplCopyWith<_$ResetFlashcardClarificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HadithFlashcardState {
  int get numofReviewedFlashcard => throw _privateConstructorUsedError;
  int get flashcardToReviewTodayLength => throw _privateConstructorUsedError;
  bool get isShowResetFlashcardClarification =>
      throw _privateConstructorUsedError;
  IList<HadithFlashcard> get flashcards => throw _privateConstructorUsedError;
  Option<Either<CommonFailures, Unit>> get optionFailureOrSaveFlashcard =>
      throw _privateConstructorUsedError;
  Option<Either<CommonFailures, IList<HadithFlashcard>>>
      get optionFailureOrGetFlashcard => throw _privateConstructorUsedError;

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
      {int numofReviewedFlashcard,
      int flashcardToReviewTodayLength,
      bool isShowResetFlashcardClarification,
      IList<HadithFlashcard> flashcards,
      Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
      Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcard});
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
    Object? numofReviewedFlashcard = null,
    Object? flashcardToReviewTodayLength = null,
    Object? isShowResetFlashcardClarification = null,
    Object? flashcards = null,
    Object? optionFailureOrSaveFlashcard = null,
    Object? optionFailureOrGetFlashcard = null,
  }) {
    return _then(_value.copyWith(
      numofReviewedFlashcard: null == numofReviewedFlashcard
          ? _value.numofReviewedFlashcard
          : numofReviewedFlashcard // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardToReviewTodayLength: null == flashcardToReviewTodayLength
          ? _value.flashcardToReviewTodayLength
          : flashcardToReviewTodayLength // ignore: cast_nullable_to_non_nullable
              as int,
      isShowResetFlashcardClarification: null ==
              isShowResetFlashcardClarification
          ? _value.isShowResetFlashcardClarification
          : isShowResetFlashcardClarification // ignore: cast_nullable_to_non_nullable
              as bool,
      flashcards: null == flashcards
          ? _value.flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as IList<HadithFlashcard>,
      optionFailureOrSaveFlashcard: null == optionFailureOrSaveFlashcard
          ? _value.optionFailureOrSaveFlashcard
          : optionFailureOrSaveFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrGetFlashcard: null == optionFailureOrGetFlashcard
          ? _value.optionFailureOrGetFlashcard
          : optionFailureOrGetFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, IList<HadithFlashcard>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HadithFlashcardStateImplCopyWith<$Res>
    implements $HadithFlashcardStateCopyWith<$Res> {
  factory _$$HadithFlashcardStateImplCopyWith(_$HadithFlashcardStateImpl value,
          $Res Function(_$HadithFlashcardStateImpl) then) =
      __$$HadithFlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numofReviewedFlashcard,
      int flashcardToReviewTodayLength,
      bool isShowResetFlashcardClarification,
      IList<HadithFlashcard> flashcards,
      Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
      Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcard});
}

/// @nodoc
class __$$HadithFlashcardStateImplCopyWithImpl<$Res>
    extends _$HadithFlashcardStateCopyWithImpl<$Res, _$HadithFlashcardStateImpl>
    implements _$$HadithFlashcardStateImplCopyWith<$Res> {
  __$$HadithFlashcardStateImplCopyWithImpl(_$HadithFlashcardStateImpl _value,
      $Res Function(_$HadithFlashcardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numofReviewedFlashcard = null,
    Object? flashcardToReviewTodayLength = null,
    Object? isShowResetFlashcardClarification = null,
    Object? flashcards = null,
    Object? optionFailureOrSaveFlashcard = null,
    Object? optionFailureOrGetFlashcard = null,
  }) {
    return _then(_$HadithFlashcardStateImpl(
      numofReviewedFlashcard: null == numofReviewedFlashcard
          ? _value.numofReviewedFlashcard
          : numofReviewedFlashcard // ignore: cast_nullable_to_non_nullable
              as int,
      flashcardToReviewTodayLength: null == flashcardToReviewTodayLength
          ? _value.flashcardToReviewTodayLength
          : flashcardToReviewTodayLength // ignore: cast_nullable_to_non_nullable
              as int,
      isShowResetFlashcardClarification: null ==
              isShowResetFlashcardClarification
          ? _value.isShowResetFlashcardClarification
          : isShowResetFlashcardClarification // ignore: cast_nullable_to_non_nullable
              as bool,
      flashcards: null == flashcards
          ? _value.flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as IList<HadithFlashcard>,
      optionFailureOrSaveFlashcard: null == optionFailureOrSaveFlashcard
          ? _value.optionFailureOrSaveFlashcard
          : optionFailureOrSaveFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrGetFlashcard: null == optionFailureOrGetFlashcard
          ? _value.optionFailureOrGetFlashcard
          : optionFailureOrGetFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, IList<HadithFlashcard>>>,
    ));
  }
}

/// @nodoc

class _$HadithFlashcardStateImpl implements _HadithFlashcardState {
  const _$HadithFlashcardStateImpl(
      {required this.numofReviewedFlashcard,
      required this.flashcardToReviewTodayLength,
      required this.isShowResetFlashcardClarification,
      required this.flashcards,
      required this.optionFailureOrSaveFlashcard,
      required this.optionFailureOrGetFlashcard});

  @override
  final int numofReviewedFlashcard;
  @override
  final int flashcardToReviewTodayLength;
  @override
  final bool isShowResetFlashcardClarification;
  @override
  final IList<HadithFlashcard> flashcards;
  @override
  final Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard;
  @override
  final Option<Either<CommonFailures, IList<HadithFlashcard>>>
      optionFailureOrGetFlashcard;

  @override
  String toString() {
    return 'HadithFlashcardState(numofReviewedFlashcard: $numofReviewedFlashcard, flashcardToReviewTodayLength: $flashcardToReviewTodayLength, isShowResetFlashcardClarification: $isShowResetFlashcardClarification, flashcards: $flashcards, optionFailureOrSaveFlashcard: $optionFailureOrSaveFlashcard, optionFailureOrGetFlashcard: $optionFailureOrGetFlashcard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithFlashcardStateImpl &&
            (identical(other.numofReviewedFlashcard, numofReviewedFlashcard) ||
                other.numofReviewedFlashcard == numofReviewedFlashcard) &&
            (identical(other.flashcardToReviewTodayLength,
                    flashcardToReviewTodayLength) ||
                other.flashcardToReviewTodayLength ==
                    flashcardToReviewTodayLength) &&
            (identical(other.isShowResetFlashcardClarification,
                    isShowResetFlashcardClarification) ||
                other.isShowResetFlashcardClarification ==
                    isShowResetFlashcardClarification) &&
            const DeepCollectionEquality()
                .equals(other.flashcards, flashcards) &&
            (identical(other.optionFailureOrSaveFlashcard,
                    optionFailureOrSaveFlashcard) ||
                other.optionFailureOrSaveFlashcard ==
                    optionFailureOrSaveFlashcard) &&
            (identical(other.optionFailureOrGetFlashcard,
                    optionFailureOrGetFlashcard) ||
                other.optionFailureOrGetFlashcard ==
                    optionFailureOrGetFlashcard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      numofReviewedFlashcard,
      flashcardToReviewTodayLength,
      isShowResetFlashcardClarification,
      const DeepCollectionEquality().hash(flashcards),
      optionFailureOrSaveFlashcard,
      optionFailureOrGetFlashcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithFlashcardStateImplCopyWith<_$HadithFlashcardStateImpl>
      get copyWith =>
          __$$HadithFlashcardStateImplCopyWithImpl<_$HadithFlashcardStateImpl>(
              this, _$identity);
}

abstract class _HadithFlashcardState implements HadithFlashcardState {
  const factory _HadithFlashcardState(
      {required final int numofReviewedFlashcard,
      required final int flashcardToReviewTodayLength,
      required final bool isShowResetFlashcardClarification,
      required final IList<HadithFlashcard> flashcards,
      required final Option<Either<CommonFailures, Unit>>
          optionFailureOrSaveFlashcard,
      required final Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcard}) = _$HadithFlashcardStateImpl;

  @override
  int get numofReviewedFlashcard;
  @override
  int get flashcardToReviewTodayLength;
  @override
  bool get isShowResetFlashcardClarification;
  @override
  IList<HadithFlashcard> get flashcards;
  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrSaveFlashcard;
  @override
  Option<Either<CommonFailures, IList<HadithFlashcard>>>
      get optionFailureOrGetFlashcard;
  @override
  @JsonKey(ignore: true)
  _$$HadithFlashcardStateImplCopyWith<_$HadithFlashcardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
