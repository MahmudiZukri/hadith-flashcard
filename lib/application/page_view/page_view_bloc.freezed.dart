// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageViewEvent {
  int get pageViewIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageViewIndex) pageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageViewIndex)? pageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageViewIndex)? pageViewChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageViewChanged value) pageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageViewChanged value)? pageViewChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageViewChanged value)? pageViewChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageViewEventCopyWith<PageViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageViewEventCopyWith<$Res> {
  factory $PageViewEventCopyWith(
          PageViewEvent value, $Res Function(PageViewEvent) then) =
      _$PageViewEventCopyWithImpl<$Res, PageViewEvent>;
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class _$PageViewEventCopyWithImpl<$Res, $Val extends PageViewEvent>
    implements $PageViewEventCopyWith<$Res> {
  _$PageViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_value.copyWith(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageViewChangedImplCopyWith<$Res>
    implements $PageViewEventCopyWith<$Res> {
  factory _$$PageViewChangedImplCopyWith(_$PageViewChangedImpl value,
          $Res Function(_$PageViewChangedImpl) then) =
      __$$PageViewChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class __$$PageViewChangedImplCopyWithImpl<$Res>
    extends _$PageViewEventCopyWithImpl<$Res, _$PageViewChangedImpl>
    implements _$$PageViewChangedImplCopyWith<$Res> {
  __$$PageViewChangedImplCopyWithImpl(
      _$PageViewChangedImpl _value, $Res Function(_$PageViewChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_$PageViewChangedImpl(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageViewChangedImpl implements _PageViewChanged {
  const _$PageViewChangedImpl({required this.pageViewIndex});

  @override
  final int pageViewIndex;

  @override
  String toString() {
    return 'PageViewEvent.pageViewChanged(pageViewIndex: $pageViewIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageViewChangedImpl &&
            (identical(other.pageViewIndex, pageViewIndex) ||
                other.pageViewIndex == pageViewIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageViewIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageViewChangedImplCopyWith<_$PageViewChangedImpl> get copyWith =>
      __$$PageViewChangedImplCopyWithImpl<_$PageViewChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageViewIndex) pageViewChanged,
  }) {
    return pageViewChanged(pageViewIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageViewIndex)? pageViewChanged,
  }) {
    return pageViewChanged?.call(pageViewIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageViewIndex)? pageViewChanged,
    required TResult orElse(),
  }) {
    if (pageViewChanged != null) {
      return pageViewChanged(pageViewIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageViewChanged value) pageViewChanged,
  }) {
    return pageViewChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageViewChanged value)? pageViewChanged,
  }) {
    return pageViewChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageViewChanged value)? pageViewChanged,
    required TResult orElse(),
  }) {
    if (pageViewChanged != null) {
      return pageViewChanged(this);
    }
    return orElse();
  }
}

abstract class _PageViewChanged implements PageViewEvent {
  const factory _PageViewChanged({required final int pageViewIndex}) =
      _$PageViewChangedImpl;

  @override
  int get pageViewIndex;
  @override
  @JsonKey(ignore: true)
  _$$PageViewChangedImplCopyWith<_$PageViewChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageViewState {
  int get pageViewIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageViewStateCopyWith<PageViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageViewStateCopyWith<$Res> {
  factory $PageViewStateCopyWith(
          PageViewState value, $Res Function(PageViewState) then) =
      _$PageViewStateCopyWithImpl<$Res, PageViewState>;
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class _$PageViewStateCopyWithImpl<$Res, $Val extends PageViewState>
    implements $PageViewStateCopyWith<$Res> {
  _$PageViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_value.copyWith(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageViewStateImplCopyWith<$Res>
    implements $PageViewStateCopyWith<$Res> {
  factory _$$PageViewStateImplCopyWith(
          _$PageViewStateImpl value, $Res Function(_$PageViewStateImpl) then) =
      __$$PageViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageViewIndex});
}

/// @nodoc
class __$$PageViewStateImplCopyWithImpl<$Res>
    extends _$PageViewStateCopyWithImpl<$Res, _$PageViewStateImpl>
    implements _$$PageViewStateImplCopyWith<$Res> {
  __$$PageViewStateImplCopyWithImpl(
      _$PageViewStateImpl _value, $Res Function(_$PageViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageViewIndex = null,
  }) {
    return _then(_$PageViewStateImpl(
      pageViewIndex: null == pageViewIndex
          ? _value.pageViewIndex
          : pageViewIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageViewStateImpl implements _PageViewState {
  const _$PageViewStateImpl({required this.pageViewIndex});

  @override
  final int pageViewIndex;

  @override
  String toString() {
    return 'PageViewState(pageViewIndex: $pageViewIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageViewStateImpl &&
            (identical(other.pageViewIndex, pageViewIndex) ||
                other.pageViewIndex == pageViewIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageViewIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageViewStateImplCopyWith<_$PageViewStateImpl> get copyWith =>
      __$$PageViewStateImplCopyWithImpl<_$PageViewStateImpl>(this, _$identity);
}

abstract class _PageViewState implements PageViewState {
  const factory _PageViewState({required final int pageViewIndex}) =
      _$PageViewStateImpl;

  @override
  int get pageViewIndex;
  @override
  @JsonKey(ignore: true)
  _$$PageViewStateImplCopyWith<_$PageViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
