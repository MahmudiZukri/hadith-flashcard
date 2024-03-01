import 'package:bloc/bloc.dart';
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
        await event.map(
          loadAd: (e) async {
            bool result = await InternetConnection().hasInternetAccess;

            if (result) {
              if (e.adEnum == EAd.reviewPageAd) {
                emit(
                  state.copyWith(
                    reviewPageBannerAd: BannerAd(
                      // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
                      adUnitId: e.adEnum.adUnitId!,
                      request: const AdRequest(),
                      size: AdSize.banner,
                      listener: BannerAdListener(
                        // Called when an ad is successfully received.
                        onAdLoaded: (ad) {},
                        // Called when an ad request failed.
                        onAdFailedToLoad: (ad, err) {
                          // Dispose the ad here to free resources.
                          ad.dispose();
                        },
                      ),
                    )..load(),
                  ),
                );
              } else if (e.adEnum == EAd.profilePageAd) {
                emit(
                  state.copyWith(
                    profilePageBannerAd: BannerAd(
                      // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
                      adUnitId: e.adEnum.adUnitId!,
                      request: const AdRequest(),
                      size: AdSize.banner,
                      listener: BannerAdListener(
                        // Called when an ad is successfully received.
                        onAdLoaded: (ad) {},
                        // Called when an ad request failed.
                        onAdFailedToLoad: (ad, err) {
                          // Dispose the ad here to free resources.
                          ad.dispose();
                        },
                      ),
                    )..load(),
                  ),
                );
              } else if (e.adEnum == EAd.hadithPageAd) {
                emit(
                  state.copyWith(
                    hadithPageBannerAd: BannerAd(
                      // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
                      adUnitId: e.adEnum.adUnitId!,
                      request: const AdRequest(),
                      size: AdSize.banner,
                      listener: BannerAdListener(
                        // Called when an ad is successfully received.
                        onAdLoaded: (ad) {},
                        // Called when an ad request failed.
                        onAdFailedToLoad: (ad, err) {
                          // Dispose the ad here to free resources.
                          ad.dispose();
                        },
                      ),
                    )..load(),
                  ),
                );
              }
            }
          },
        );
      },
    );
  }
}
