part of 'showcase_bloc.dart';

@freezed
class ShowcaseState with _$ShowcaseState {
  const factory ShowcaseState({
    required GlobalKey reviewGlobalKey,
    required GlobalKey narratorGlobalKey,
    required GlobalKey profileGlobalKey,
  }) = _ShowcaseState;

  factory ShowcaseState.initial() => ShowcaseState(
        reviewGlobalKey: GlobalKey(),
        narratorGlobalKey: GlobalKey(),
        profileGlobalKey: GlobalKey(),
      );
}
