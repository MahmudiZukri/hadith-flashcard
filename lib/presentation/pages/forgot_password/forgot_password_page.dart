part of '../pages.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ForgotPasswordBloc>(
          create: (context) => getIt<ForgotPasswordBloc>(),
        ),
      ],
      child: const ForgotPasswordPageScaffold(),
    );
  }
}

class ForgotPasswordPageScaffold extends StatelessWidget {
  const ForgotPasswordPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    const SizedBox(width: defaultMargin),
                    Icon(MdiIcons.arrowLeft, size: 26.0),
                    const SizedBox(width: 6.0),
                    Text(
                      'back'.tr,
                      style: adaptiveTextFont.copyWith(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (previous, current) =>
                  previous.showSnackbar != current.showSnackbar,
              listener: (context, state) {
                state.optionFailureOrSuccess.match(
                  () => null,
                  (either) => either.fold(
                    (f) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(
                            seconds: 2,
                          ),
                          content: Text(
                            f.maybeMap(
                              handledByFirebase: (s) => s.message,
                              orElse: () => '${'somethingWentWrong'.tr} ($f).',
                            ),
                          ),
                        ),
                      );
                    },
                    (_) {
                      Get.to(
                        () => const CheckEmailPage(),
                      );
                    },
                  ),
                );
              },
              builder: (context, authState) => Expanded(
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Form(
                    autovalidateMode: authState.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'resetPassword'.tr,
                          style: adaptiveTextFont.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'provideEmail'.tr,
                          style: greyTextFont,
                        ),
                        const SizedBox(height: 20.0),
                        Text('yourEmail'.tr),
                        const SizedBox(height: 10.0),
                        CustomTextFormFieldWidget(
                          labelText: 'Email',
                          hintText: 'enterYourEmail'.tr,
                          fillColor:
                              colorScheme(context).background.withOpacity(0.2),
                          onChanged: (val) {
                            context.read<ForgotPasswordBloc>().add(
                                  ForgotPasswordEvent.emailChanged(
                                    emailStr: val,
                                  ),
                                );
                          },
                          validator: (val) =>
                              EmailAddress(val!).getFoldValidator(),
                        ),
                        const SizedBox(height: 16.0),
                        const Spacer(),
                        BlocSelector<AuthBloc, AuthState, bool>(
                          selector: (state) => state.onLoading,
                          builder: (context, onLoadingState) => BlocSelector<
                              ForgotPasswordBloc,
                              ForgotPasswordState,
                              EmailAddress>(
                            selector: (state) => state.email,
                            builder: (context, emailState) {
                              return Opacity(
                                opacity:
                                    emailState == EmailAddress('') ? 0.5 : 1,
                                child: onLoadingState
                                    ? const CustomCircularProgressIndicatorWidget()
                                    : CustomElevatedButtonWidget(
                                        text: 'reset'.tr,
                                        isEnabled:
                                            emailState != EmailAddress(''),
                                        backgroundColor: primaryColor,
                                        textStyle: adaptiveTextFont.copyWith(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: colorScheme(context)
                                              .inversePrimary,
                                        ),
                                        onPressed: () {
                                          context.read<AuthBloc>().add(
                                                AuthEvent.resetPassword(
                                                  emailStr:
                                                      emailState.getOrEmpty(),
                                                ),
                                              );
                                        },
                                      ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: screenHeight(context) / 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
