part of 'widgets.dart';

class CustomAdWidget extends StatelessWidget {
  const CustomAdWidget({
    required this.bannerAd,
    super.key,
  });

  final BannerAd bannerAd;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, _) => Center(
        child: SizedBox(
          height: bannerAd.size.height.toDouble(),
          width: bannerAd.size.width.toDouble(),
          child: AdWidget(
            ad: bannerAd,
          ),
        ),
      ),
    );
  }
}
