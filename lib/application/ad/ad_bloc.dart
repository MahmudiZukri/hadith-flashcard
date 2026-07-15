import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hadith_flashcard/domain/core/enums/enums.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'ad_event.dart';
part 'ad_state.dart';
part 'ad_bloc.freezed.dart';

@injectable
class AdBloc extends Bloc<AdEvent, AdState> {
  AdBloc()
      : super(
          AdState.initial(),
        ) {
    on<AdEvent>(
      (event, emit) async {
        try {
          await event.map(
            loadAd: (e) async {
              bool result = await InternetConnection().hasInternetAccess;

              if (result) {
                if (e.adEnum == EAd.reviewPageAd) {
                  // Dispose existing ad before creating a new one
                  state.reviewPageBannerAd?.dispose();
                  emit(state.copyWith(reviewPageBannerAd: null));
                } else if (e.adEnum == EAd.profilePageAd) {
                  state.profilePageBannerAd?.dispose();
                  emit(state.copyWith(profilePageBannerAd: null));
                } else if (e.adEnum == EAd.hadithPageAd) {
                  state.hadithPageBannerAd?.dispose();
                  emit(state.copyWith(hadithPageBannerAd: null));
                }

                BannerAd(
                  adUnitId: e.adEnum.adUnitId!,
                  request: const AdRequest(),
                  size: AdSize.banner,
                  listener: BannerAdListener(
                    onAdLoaded: (ad) {
                      debugPrint('✅ BannerAd loaded for ${e.adEnum}');
                      add(AdEvent.adLoaded(adEnum: e.adEnum, bannerAd: ad as BannerAd));
                    },
                    onAdFailedToLoad: (ad, err) {
                      debugPrint('❌ BannerAd failed to load for ${e.adEnum}: $err');
                      ad.dispose();
                      add(AdEvent.adFailedToLoad(adEnum: e.adEnum));
                    },
                  ),
                ).load();
              }
            },
            adLoaded: (e) async {
              if (e.adEnum == EAd.reviewPageAd) {
                emit(state.copyWith(reviewPageBannerAd: e.bannerAd));
              } else if (e.adEnum == EAd.profilePageAd) {
                emit(state.copyWith(profilePageBannerAd: e.bannerAd));
              } else if (e.adEnum == EAd.hadithPageAd) {
                emit(state.copyWith(hadithPageBannerAd: e.bannerAd));
              }
            },
            adFailedToLoad: (e) async {
              if (e.adEnum == EAd.reviewPageAd) {
                emit(state.copyWith(reviewPageBannerAd: null));
              } else if (e.adEnum == EAd.profilePageAd) {
                emit(state.copyWith(profilePageBannerAd: null));
              } else if (e.adEnum == EAd.hadithPageAd) {
                emit(state.copyWith(hadithPageBannerAd: null));
              }
            },
          );
        } catch (e, stackTrace) {
          debugPrint('❌ CRASH in AdBloc handling ${event.runtimeType}: $e\n$stackTrace');
        }
      },
    );
  }
}
