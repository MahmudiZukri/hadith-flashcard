part of '../../pages.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: screenHeight(),
        width: screenWidth(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 6.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'checkYourEmail'.tr,
                  style: adaptiveTextFont().copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: screenWidth() / 2.4,
                      width: screenWidth() / 2.4,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Lottie.asset(
                        AssetUrl.sendEmailLottie,
                        height: screenWidth() / 1.3,
                        width: screenWidth() / 1.3,
                      ),
                    ),
                    SizedBox(height: screenHeight() / 22),
                    Text(
                      'checkYourEmailMessage'.tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        height: 1.88,
                      ),
                    ),
                    SizedBox(height: screenHeight() / 22),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const SignInPage(),
                        );
                      },
                      child: Text(
                        'signInToYourAccount'.tr,
                        style: primaryTextFont.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight() / 12),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "didn'tReceiveEmail".tr,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(width: 4.0),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'tryAnotherEmail'.tr,
                        style: primaryTextFont.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
