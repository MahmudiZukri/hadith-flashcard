part of 'enums.dart';

enum EAd { reviewPageAd, profilePageAd, hadithPageAd }

extension EAdX on EAd {
  static const names = {
    EAd.reviewPageAd: 'review',
    EAd.profilePageAd: 'profile',
    EAd.hadithPageAd: 'hadith',
  };

  static const adUnitIds = {
    EAd.reviewPageAd: 'ca-app-pub-4205579795336385/7910948833',
    EAd.profilePageAd: 'ca-app-pub-4205579795336385/9299573196',
    EAd.hadithPageAd: 'ca-app-pub-4205579795336385/9823097627',
  };

  String? get name => names[this];
  String? get adUnitId => adUnitIds[this];
}
