part of 'ad_bloc.dart';

@freezed
class AdEvent with _$AdEvent {
  const factory AdEvent.loadAd({
    required EAd adEnum,
  }) = _LoadAd;
  const factory AdEvent.adLoaded({
    required EAd adEnum,
    required BannerAd bannerAd,
  }) = _AdLoaded;
  const factory AdEvent.adFailedToLoad({
    required EAd adEnum,
  }) = _AdFailedToLoad;
}
