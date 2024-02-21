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
        title: 'privacyPolicy'.tr,
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
              'privacyPolicyText'.tr,
              style: adaptiveTextFont.copyWith(height: 1.6),
            ),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle1'.tr,
              style: adaptiveTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText1'.tr,
              style: adaptiveTextFont.copyWith(height: 1.6),
            ),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle2'.tr,
              style: adaptiveTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText2'.tr,
              style: adaptiveTextFont.copyWith(height: 1.6),
            ),
            const SizedBox(height: 20.0),
            Text(
              'privacyPolicyTitle3'.tr,
              style: adaptiveTextFont.copyWith(
                height: 1.6,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'privacyPolicyText3'.tr,
              style: adaptiveTextFont.copyWith(height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}
