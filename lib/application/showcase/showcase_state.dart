part of 'showcase_bloc.dart';

@freezed
class ShowcaseState with _$ShowcaseState {
  const factory ShowcaseState({
    required GlobalKey welcomeGlobalKey,
    required GlobalKey reviewNavBarGlobalKey,
    required GlobalKey narratorNavBarGlobalKey,
    required GlobalKey profileNavBarGlobalKey,
    required GlobalKey enjoyGlobalKey,
  }) = _ShowcaseState;

  factory ShowcaseState.initial() => ShowcaseState(
        welcomeGlobalKey: GlobalKey(),
        reviewNavBarGlobalKey: GlobalKey(),
        narratorNavBarGlobalKey: GlobalKey(),
        profileNavBarGlobalKey: GlobalKey(),
        enjoyGlobalKey: GlobalKey(),
      );
}
