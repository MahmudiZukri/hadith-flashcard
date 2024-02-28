part of 'page_view_bloc.dart';

@freezed
class PageViewState with _$PageViewState {
  const factory PageViewState({
    required int pageViewIndex,
  }) = _PageViewState;

  factory PageViewState.initial() => const PageViewState(
        pageViewIndex: 1,
      );
}
