part of 'showcase_bloc.dart';

@freezed
class ShowcaseEvent with _$ShowcaseEvent {
  const factory ShowcaseEvent.start({
    required BuildContext context,
  }) = _Start;
}
