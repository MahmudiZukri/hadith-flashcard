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
              color: colorScheme().inversePrimary,
            ),
          ),
          const SizedBox(width: 12.0),
        ],
        leadingOnTap: () {
          Get.back();
        },
      ),
      body: CustomWebViewWidget(
        url: Get.locale.toString() == ELanguage.indonesia.locale
            ? 'https://mahmudizukri.github.io/hadith-flashcard-privacy-policy/privacy-policy.html?lang=id'
            : 'https://mahmudizukri.github.io/hadith-flashcard-privacy-policy/privacy-policy.html?lang=en',
      ),
    );
  }
}
