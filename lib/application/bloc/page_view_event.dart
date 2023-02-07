part of 'page_view_bloc.dart';

@freezed
class PageViewEvent with _$PageViewEvent {
  const factory PageViewEvent.pageViewChanged({
    required int pageViewIndex,
  }) = _PageViewChanged;
}
