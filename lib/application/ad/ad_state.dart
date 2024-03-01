part of 'ad_bloc.dart';

@freezed
class AdState with _$AdState {
  const factory AdState({
    required BannerAd? reviewPageBannerAd,
    required BannerAd? profilePageBannerAd,
    required BannerAd? hadithPageBannerAd,
  }) = _AdState;

  factory AdState.initial() => const AdState(
        reviewPageBannerAd: null,
        profilePageBannerAd: null,
        hadithPageBannerAd: null,
      );
}
