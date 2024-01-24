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
                'Check Your Email',
                style: blackTextFont.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  const Text(
                      "Didn't receive the email? Check your spam filter, or"),
                  GestureDetector(
                    onTap: () {
                      // context.read<PageBloc>().add(
                      //       GotoForgotPasswordPage(),
                      //     );

                      Get.to(
                        () => const SignInPage(),
                      );
                    },
                    child: Text(
                      'try another email address',
                      style:
                          primaryTextFont.copyWith(fontWeight: FontWeight.bold),
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
