part of '../pages.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'privacyPolicy'.tr(),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => HomePage(
                  userID: userID,
                  pageIndex: 1,
                ),
              );
            },
            child: Icon(
              MdiIcons.cardsOutline,
            ),
          ),
          const SizedBox(width: 12.0),
        ],
        leadingOnTap: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin / 1.5,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 22.0),
            Text(
              'privacyPolicyText',
              style: blackTextFont.copyWith(height: 1.6),
            ).tr(),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle1',
              style: blackTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ).tr(),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText1',
              style: blackTextFont.copyWith(height: 1.6),
            ).tr(),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle2',
              style: blackTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ).tr(),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText2',
              style: blackTextFont.copyWith(height: 1.6),
            ).tr(),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle3',
              style: blackTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ).tr(),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText3',
              style: blackTextFont.copyWith(height: 1.6),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
