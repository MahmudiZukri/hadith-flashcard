part of 'ad_bloc.dart';

@freezed
class AdEvent with _$AdEvent {
  const factory AdEvent.loadAd({
    required EAd adEnum,
  }) = _LoadAd;
}
