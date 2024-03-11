part of '../pages.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    WebViewController webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
          'https://mahmudizukri.github.io/hadith-flashcard-privacy-policy/privacy-policy.html',
        ),
      );
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
              color: colorScheme(context).inversePrimary,
            ),
          ),
          const SizedBox(width: 12.0),
        ],
        leadingOnTap: () {
          Get.back();
        },
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
