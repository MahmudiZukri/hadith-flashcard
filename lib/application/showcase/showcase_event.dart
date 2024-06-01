part of 'showcase_bloc.dart';

@freezed
class ShowcaseEvent with _$ShowcaseEvent {
  const factory ShowcaseEvent.started({
    required BuildContext context,
  }) = _Started;
}
