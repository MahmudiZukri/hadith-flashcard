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
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
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
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return saveFlashcard(userID, flashcard, quality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return saveFlashcard?.call(userID, flashcard, quality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
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
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return saveFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return saveFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
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
abstract class _$$DeleteFlashcardImplCopyWith<$Res> {
  factory _$$DeleteFlashcardImplCopyWith(_$DeleteFlashcardImpl value,
          $Res Function(_$DeleteFlashcardImpl) then) =
      __$$DeleteFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueString userID, UnemptyString flashcardID});
}

/// @nodoc
class __$$DeleteFlashcardImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$DeleteFlashcardImpl>
    implements _$$DeleteFlashcardImplCopyWith<$Res> {
  __$$DeleteFlashcardImplCopyWithImpl(
      _$DeleteFlashcardImpl _value, $Res Function(_$DeleteFlashcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? flashcardID = null,
  }) {
    return _then(_$DeleteFlashcardImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UniqueString,
      flashcardID: null == flashcardID
          ? _value.flashcardID
          : flashcardID // ignore: cast_nullable_to_non_nullable
              as UnemptyString,
    ));
  }
}

/// @nodoc

class _$DeleteFlashcardImpl implements _DeleteFlashcard {
  const _$DeleteFlashcardImpl(
      {required this.userID, required this.flashcardID});

  @override
  final UniqueString userID;
  @override
  final UnemptyString flashcardID;

  @override
  String toString() {
    return 'HadithFlashcardEvent.deleteFlashcard(userID: $userID, flashcardID: $flashcardID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFlashcardImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.flashcardID, flashcardID) ||
                other.flashcardID == flashcardID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, flashcardID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFlashcardImplCopyWith<_$DeleteFlashcardImpl> get copyWith =>
      __$$DeleteFlashcardImplCopyWithImpl<_$DeleteFlashcardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return deleteFlashcard(userID, flashcardID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return deleteFlashcard?.call(userID, flashcardID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (deleteFlashcard != null) {
      return deleteFlashcard(userID, flashcardID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return deleteFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return deleteFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (deleteFlashcard != null) {
      return deleteFlashcard(this);
    }
    return orElse();
  }
}

abstract class _DeleteFlashcard implements HadithFlashcardEvent {
  const factory _DeleteFlashcard(
      {required final UniqueString userID,
      required final UnemptyString flashcardID}) = _$DeleteFlashcardImpl;

  UniqueString get userID;
  UnemptyString get flashcardID;
  @JsonKey(ignore: true)
  _$$DeleteFlashcardImplCopyWith<_$DeleteFlashcardImpl> get copyWith =>
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
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return getFlashcard(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return getFlashcard?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
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
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return getFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return getFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
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
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return resetFlashcardSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return resetFlashcardSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
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
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return resetFlashcardSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return resetFlashcardSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
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
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return resetFlashcardClarification(isShowClarification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return resetFlashcardClarification?.call(isShowClarification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
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
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return resetFlashcardClarification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return resetFlashcardClarification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
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
abstract class _$$AddToMyFlashcardImplCopyWith<$Res> {
  factory _$$AddToMyFlashcardImplCopyWith(_$AddToMyFlashcardImpl value,
          $Res Function(_$AddToMyFlashcardImpl) then) =
      __$$AddToMyFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<HadithFlashcard> flashcards});
}

/// @nodoc
class __$$AddToMyFlashcardImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res, _$AddToMyFlashcardImpl>
    implements _$$AddToMyFlashcardImplCopyWith<$Res> {
  __$$AddToMyFlashcardImplCopyWithImpl(_$AddToMyFlashcardImpl _value,
      $Res Function(_$AddToMyFlashcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcards = null,
  }) {
    return _then(_$AddToMyFlashcardImpl(
      flashcards: null == flashcards
          ? _value.flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as IList<HadithFlashcard>,
    ));
  }
}

/// @nodoc

class _$AddToMyFlashcardImpl implements _AddToMyFlashcard {
  const _$AddToMyFlashcardImpl({required this.flashcards});

  @override
  final IList<HadithFlashcard> flashcards;

  @override
  String toString() {
    return 'HadithFlashcardEvent.addToMyFlashcard(flashcards: $flashcards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToMyFlashcardImpl &&
            const DeepCollectionEquality()
                .equals(other.flashcards, flashcards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flashcards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToMyFlashcardImplCopyWith<_$AddToMyFlashcardImpl> get copyWith =>
      __$$AddToMyFlashcardImplCopyWithImpl<_$AddToMyFlashcardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return addToMyFlashcard(flashcards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return addToMyFlashcard?.call(flashcards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (addToMyFlashcard != null) {
      return addToMyFlashcard(flashcards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return addToMyFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return addToMyFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (addToMyFlashcard != null) {
      return addToMyFlashcard(this);
    }
    return orElse();
  }
}

abstract class _AddToMyFlashcard implements HadithFlashcardEvent {
  const factory _AddToMyFlashcard(
          {required final IList<HadithFlashcard> flashcards}) =
      _$AddToMyFlashcardImpl;

  IList<HadithFlashcard> get flashcards;
  @JsonKey(ignore: true)
  _$$AddToMyFlashcardImplCopyWith<_$AddToMyFlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFromMyFlashcardImplCopyWith<$Res> {
  factory _$$DeleteFromMyFlashcardImplCopyWith(
          _$DeleteFromMyFlashcardImpl value,
          $Res Function(_$DeleteFromMyFlashcardImpl) then) =
      __$$DeleteFromMyFlashcardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HadithFlashcard flashcard});

  $HadithFlashcardCopyWith<$Res> get flashcard;
}

/// @nodoc
class __$$DeleteFromMyFlashcardImplCopyWithImpl<$Res>
    extends _$HadithFlashcardEventCopyWithImpl<$Res,
        _$DeleteFromMyFlashcardImpl>
    implements _$$DeleteFromMyFlashcardImplCopyWith<$Res> {
  __$$DeleteFromMyFlashcardImplCopyWithImpl(_$DeleteFromMyFlashcardImpl _value,
      $Res Function(_$DeleteFromMyFlashcardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashcard = null,
  }) {
    return _then(_$DeleteFromMyFlashcardImpl(
      flashcard: null == flashcard
          ? _value.flashcard
          : flashcard // ignore: cast_nullable_to_non_nullable
              as HadithFlashcard,
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

class _$DeleteFromMyFlashcardImpl implements _DeleteFromMyFlashcard {
  const _$DeleteFromMyFlashcardImpl({required this.flashcard});

  @override
  final HadithFlashcard flashcard;

  @override
  String toString() {
    return 'HadithFlashcardEvent.deleteFromMyFlashcard(flashcard: $flashcard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFromMyFlashcardImpl &&
            (identical(other.flashcard, flashcard) ||
                other.flashcard == flashcard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashcard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFromMyFlashcardImplCopyWith<_$DeleteFromMyFlashcardImpl>
      get copyWith => __$$DeleteFromMyFlashcardImplCopyWithImpl<
          _$DeleteFromMyFlashcardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)
        saveFlashcard,
    required TResult Function(UniqueString userID, UnemptyString flashcardID)
        deleteFlashcard,
    required TResult Function(UniqueString userID) getFlashcard,
    required TResult Function() resetFlashcardSnackBar,
    required TResult Function(bool isShowClarification)
        resetFlashcardClarification,
    required TResult Function(IList<HadithFlashcard> flashcards)
        addToMyFlashcard,
    required TResult Function(HadithFlashcard flashcard) deleteFromMyFlashcard,
  }) {
    return deleteFromMyFlashcard(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult? Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult? Function(UniqueString userID)? getFlashcard,
    TResult? Function()? resetFlashcardSnackBar,
    TResult? Function(bool isShowClarification)? resetFlashcardClarification,
    TResult? Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult? Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
  }) {
    return deleteFromMyFlashcard?.call(flashcard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UniqueString userID, HadithFlashcard flashcard, int? quality)?
        saveFlashcard,
    TResult Function(UniqueString userID, UnemptyString flashcardID)?
        deleteFlashcard,
    TResult Function(UniqueString userID)? getFlashcard,
    TResult Function()? resetFlashcardSnackBar,
    TResult Function(bool isShowClarification)? resetFlashcardClarification,
    TResult Function(IList<HadithFlashcard> flashcards)? addToMyFlashcard,
    TResult Function(HadithFlashcard flashcard)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (deleteFromMyFlashcard != null) {
      return deleteFromMyFlashcard(flashcard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveFlashcard value) saveFlashcard,
    required TResult Function(_DeleteFlashcard value) deleteFlashcard,
    required TResult Function(_GetFlashcard value) getFlashcard,
    required TResult Function(_ResetFlashcardSnackBar value)
        resetFlashcardSnackBar,
    required TResult Function(_ResetFlashcardClarification value)
        resetFlashcardClarification,
    required TResult Function(_AddToMyFlashcard value) addToMyFlashcard,
    required TResult Function(_DeleteFromMyFlashcard value)
        deleteFromMyFlashcard,
  }) {
    return deleteFromMyFlashcard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveFlashcard value)? saveFlashcard,
    TResult? Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult? Function(_GetFlashcard value)? getFlashcard,
    TResult? Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult? Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult? Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult? Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
  }) {
    return deleteFromMyFlashcard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveFlashcard value)? saveFlashcard,
    TResult Function(_DeleteFlashcard value)? deleteFlashcard,
    TResult Function(_GetFlashcard value)? getFlashcard,
    TResult Function(_ResetFlashcardSnackBar value)? resetFlashcardSnackBar,
    TResult Function(_ResetFlashcardClarification value)?
        resetFlashcardClarification,
    TResult Function(_AddToMyFlashcard value)? addToMyFlashcard,
    TResult Function(_DeleteFromMyFlashcard value)? deleteFromMyFlashcard,
    required TResult orElse(),
  }) {
    if (deleteFromMyFlashcard != null) {
      return deleteFromMyFlashcard(this);
    }
    return orElse();
  }
}

abstract class _DeleteFromMyFlashcard implements HadithFlashcardEvent {
  const factory _DeleteFromMyFlashcard(
      {required final HadithFlashcard flashcard}) = _$DeleteFromMyFlashcardImpl;

  HadithFlashcard get flashcard;
  @JsonKey(ignore: true)
  _$$DeleteFromMyFlashcardImplCopyWith<_$DeleteFromMyFlashcardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HadithFlashcardState {
  UnemptyString? get searchFlashcardText => throw _privateConstructorUsedError;
  int get numofReviewedFlashcard => throw _privateConstructorUsedError;
  int get flashcardToReviewTodayLength => throw _privateConstructorUsedError;
  bool get isShowResetFlashcardClarification =>
      throw _privateConstructorUsedError;
  IList<HadithFlashcard> get flashcards => throw _privateConstructorUsedError;
  IList<HadithFlashcard> get myHadithFlashcards =>
      throw _privateConstructorUsedError;
  Option<Either<CommonFailures, Unit>> get optionFailureOrSaveFlashcard =>
      throw _privateConstructorUsedError;
  Option<Either<CommonFailures, Unit>> get optionFailureOrDeleteFlashcard =>
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
      {UnemptyString? searchFlashcardText,
      int numofReviewedFlashcard,
      int flashcardToReviewTodayLength,
      bool isShowResetFlashcardClarification,
      IList<HadithFlashcard> flashcards,
      IList<HadithFlashcard> myHadithFlashcards,
      Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
      Option<Either<CommonFailures, Unit>> optionFailureOrDeleteFlashcard,
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
    Object? searchFlashcardText = freezed,
    Object? numofReviewedFlashcard = null,
    Object? flashcardToReviewTodayLength = null,
    Object? isShowResetFlashcardClarification = null,
    Object? flashcards = null,
    Object? myHadithFlashcards = null,
    Object? optionFailureOrSaveFlashcard = null,
    Object? optionFailureOrDeleteFlashcard = null,
    Object? optionFailureOrGetFlashcard = null,
  }) {
    return _then(_value.copyWith(
      searchFlashcardText: freezed == searchFlashcardText
          ? _value.searchFlashcardText
          : searchFlashcardText // ignore: cast_nullable_to_non_nullable
              as UnemptyString?,
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
      myHadithFlashcards: null == myHadithFlashcards
          ? _value.myHadithFlashcards
          : myHadithFlashcards // ignore: cast_nullable_to_non_nullable
              as IList<HadithFlashcard>,
      optionFailureOrSaveFlashcard: null == optionFailureOrSaveFlashcard
          ? _value.optionFailureOrSaveFlashcard
          : optionFailureOrSaveFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrDeleteFlashcard: null == optionFailureOrDeleteFlashcard
          ? _value.optionFailureOrDeleteFlashcard
          : optionFailureOrDeleteFlashcard // ignore: cast_nullable_to_non_nullable
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
      {UnemptyString? searchFlashcardText,
      int numofReviewedFlashcard,
      int flashcardToReviewTodayLength,
      bool isShowResetFlashcardClarification,
      IList<HadithFlashcard> flashcards,
      IList<HadithFlashcard> myHadithFlashcards,
      Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard,
      Option<Either<CommonFailures, Unit>> optionFailureOrDeleteFlashcard,
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
    Object? searchFlashcardText = freezed,
    Object? numofReviewedFlashcard = null,
    Object? flashcardToReviewTodayLength = null,
    Object? isShowResetFlashcardClarification = null,
    Object? flashcards = null,
    Object? myHadithFlashcards = null,
    Object? optionFailureOrSaveFlashcard = null,
    Object? optionFailureOrDeleteFlashcard = null,
    Object? optionFailureOrGetFlashcard = null,
  }) {
    return _then(_$HadithFlashcardStateImpl(
      searchFlashcardText: freezed == searchFlashcardText
          ? _value.searchFlashcardText
          : searchFlashcardText // ignore: cast_nullable_to_non_nullable
              as UnemptyString?,
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
      myHadithFlashcards: null == myHadithFlashcards
          ? _value.myHadithFlashcards
          : myHadithFlashcards // ignore: cast_nullable_to_non_nullable
              as IList<HadithFlashcard>,
      optionFailureOrSaveFlashcard: null == optionFailureOrSaveFlashcard
          ? _value.optionFailureOrSaveFlashcard
          : optionFailureOrSaveFlashcard // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailures, Unit>>,
      optionFailureOrDeleteFlashcard: null == optionFailureOrDeleteFlashcard
          ? _value.optionFailureOrDeleteFlashcard
          : optionFailureOrDeleteFlashcard // ignore: cast_nullable_to_non_nullable
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
      {required this.searchFlashcardText,
      required this.numofReviewedFlashcard,
      required this.flashcardToReviewTodayLength,
      required this.isShowResetFlashcardClarification,
      required this.flashcards,
      required this.myHadithFlashcards,
      required this.optionFailureOrSaveFlashcard,
      required this.optionFailureOrDeleteFlashcard,
      required this.optionFailureOrGetFlashcard});

  @override
  final UnemptyString? searchFlashcardText;
  @override
  final int numofReviewedFlashcard;
  @override
  final int flashcardToReviewTodayLength;
  @override
  final bool isShowResetFlashcardClarification;
  @override
  final IList<HadithFlashcard> flashcards;
  @override
  final IList<HadithFlashcard> myHadithFlashcards;
  @override
  final Option<Either<CommonFailures, Unit>> optionFailureOrSaveFlashcard;
  @override
  final Option<Either<CommonFailures, Unit>> optionFailureOrDeleteFlashcard;
  @override
  final Option<Either<CommonFailures, IList<HadithFlashcard>>>
      optionFailureOrGetFlashcard;

  @override
  String toString() {
    return 'HadithFlashcardState(searchFlashcardText: $searchFlashcardText, numofReviewedFlashcard: $numofReviewedFlashcard, flashcardToReviewTodayLength: $flashcardToReviewTodayLength, isShowResetFlashcardClarification: $isShowResetFlashcardClarification, flashcards: $flashcards, myHadithFlashcards: $myHadithFlashcards, optionFailureOrSaveFlashcard: $optionFailureOrSaveFlashcard, optionFailureOrDeleteFlashcard: $optionFailureOrDeleteFlashcard, optionFailureOrGetFlashcard: $optionFailureOrGetFlashcard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithFlashcardStateImpl &&
            (identical(other.searchFlashcardText, searchFlashcardText) ||
                other.searchFlashcardText == searchFlashcardText) &&
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
            const DeepCollectionEquality()
                .equals(other.myHadithFlashcards, myHadithFlashcards) &&
            (identical(other.optionFailureOrSaveFlashcard,
                    optionFailureOrSaveFlashcard) ||
                other.optionFailureOrSaveFlashcard ==
                    optionFailureOrSaveFlashcard) &&
            (identical(other.optionFailureOrDeleteFlashcard,
                    optionFailureOrDeleteFlashcard) ||
                other.optionFailureOrDeleteFlashcard ==
                    optionFailureOrDeleteFlashcard) &&
            (identical(other.optionFailureOrGetFlashcard,
                    optionFailureOrGetFlashcard) ||
                other.optionFailureOrGetFlashcard ==
                    optionFailureOrGetFlashcard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchFlashcardText,
      numofReviewedFlashcard,
      flashcardToReviewTodayLength,
      isShowResetFlashcardClarification,
      const DeepCollectionEquality().hash(flashcards),
      const DeepCollectionEquality().hash(myHadithFlashcards),
      optionFailureOrSaveFlashcard,
      optionFailureOrDeleteFlashcard,
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
      {required final UnemptyString? searchFlashcardText,
      required final int numofReviewedFlashcard,
      required final int flashcardToReviewTodayLength,
      required final bool isShowResetFlashcardClarification,
      required final IList<HadithFlashcard> flashcards,
      required final IList<HadithFlashcard> myHadithFlashcards,
      required final Option<Either<CommonFailures, Unit>>
          optionFailureOrSaveFlashcard,
      required final Option<Either<CommonFailures, Unit>>
          optionFailureOrDeleteFlashcard,
      required final Option<Either<CommonFailures, IList<HadithFlashcard>>>
          optionFailureOrGetFlashcard}) = _$HadithFlashcardStateImpl;

  @override
  UnemptyString? get searchFlashcardText;
  @override
  int get numofReviewedFlashcard;
  @override
  int get flashcardToReviewTodayLength;
  @override
  bool get isShowResetFlashcardClarification;
  @override
  IList<HadithFlashcard> get flashcards;
  @override
  IList<HadithFlashcard> get myHadithFlashcards;
  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrSaveFlashcard;
  @override
  Option<Either<CommonFailures, Unit>> get optionFailureOrDeleteFlashcard;
  @override
  Option<Either<CommonFailures, IList<HadithFlashcard>>>
      get optionFailureOrGetFlashcard;
  @override
  @JsonKey(ignore: true)
  _$$HadithFlashcardStateImplCopyWith<_$HadithFlashcardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
