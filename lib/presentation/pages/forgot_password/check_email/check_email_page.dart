part of '../../pages.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'checkYourEmail'.tr,
                style: blackTextFont.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

                // TODO : add illustration here later
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    "didn'tReceiveEmail".tr,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
