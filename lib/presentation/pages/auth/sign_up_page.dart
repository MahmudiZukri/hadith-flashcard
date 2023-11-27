part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<PasswordTextFieldBloc>(
          create: (context) => getIt<PasswordTextFieldBloc>(),
        ),
      ],
      child: const SignUpPageScaffold(),
    );
  }
}

class SignUpPageScaffold extends StatelessWidget {
  const SignUpPageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: primaryColor,
            padding: EdgeInsets.only(
              top: screenHeight(context) / 8,
            ),
            child: Text(
              'Hadith Flashcard',
              textAlign: TextAlign.center,
              style: whiteTextFont.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight(context) / 4.4,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 6.0,
              ),
              decoration: BoxDecoration(
                color: defaultBackgroundColor.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(34),
                  topLeft: Radius.circular(34),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                AnimatedContainer(
                  duration: defaultDuration(),
                  height: keyboardSize(context) == 0
                      ? screenHeight(context) / 4
                      : 0,
                ),
                AnimatedContainer(
                  duration: defaultDuration(),
                  height: keyboardSize(context) == 0
                      ? screenHeight(context) - screenHeight(context) / 4
                      : screenHeight(context) - keyboardSize(context),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  decoration: const BoxDecoration(
                    color: defaultBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listenWhen: (previous, current) =>
                        previous.showSnackbar != current.showSnackbar,
                    listener: (_, state) {
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
                                    orElse: () =>
                                        '${'somethingWentWrong'.tr()}($f).',
                                  ),
                                ),
                              ),
                            );
                          },
                          (_) {},
                        ),
                      );
                    },
                    builder: (_, state) => Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(height: screenHeight(context) / 16),
                          keyboardSize(context) == 0
                              ? Text(
                                  'createAnAccount',
                                  style: blackTextFont.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).tr()
                              : const SizedBox(),
                          const SizedBox(height: 30.0),
                          CustomTextFormFieldWidget(
                            labelText: 'name'.tr(),
                            hintText: 'enterYourName'.tr(),
                            onChanged: (val) => context.read<AuthBloc>().add(
                                  AuthEvent.nameChanged(
                                    nameStr: val,
                                  ),
                                ),
                            validator: (val) =>
                                PersonName(val!).getFoldValidator(),
                          ),
                          const SizedBox(height: 16.0),
                          CustomTextFormFieldWidget(
                            labelText: 'Email',
                            hintText: 'enterYourEmail'.tr(),
                            onChanged: (val) => context.read<AuthBloc>().add(
                                  AuthEvent.emailChanged(
                                    emailStr: val,
                                  ),
                                ),
                            validator: (val) =>
                                EmailAddress(val!).getFoldValidator(),
                          ),
                          const SizedBox(height: 16.0),
                          BlocSelector<PasswordTextFieldBloc,
                              PasswordTextFieldState, bool>(
                            selector: (state) => state.isSignUpTextFieldObscure,
                            builder: (context, isSignUpTextFieldObscure) {
                              return CustomTextFormFieldWidget(
                                labelText: 'password'.tr(),
                                hintText: 'enterYourPassword'.tr(),
                                onChanged: (val) =>
                                    context.read<AuthBloc>().add(
                                          AuthEvent.passwordChanged(
                                            passwordStr: val,
                                          ),
                                        ),
                                validator: (val) =>
                                    Password(val!).getFoldValidator(),
                                isPasswordTextField: true,
                                isEyeOpen: isSignUpTextFieldObscure,
                                eyeOnTap: () {
                                  context.read<PasswordTextFieldBloc>().add(
                                        const PasswordTextFieldEvent
                                            .signUpTextFieldObsecureChanged(),
                                      );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 16.0),
                          const Spacer(),
                          state.onLoading
                              ? const CustomCircularProgressIndicatorWidget()
                              : Opacity(
                                  opacity: state.email == EmailAddress('') ||
                                          state.password == Password('')
                                      ? 0.5
                                      : 1,
                                  child: CustomElevatedButtonWidget(
                                    text: 'signUp'.tr(),
                                    isEnabled:
                                        state.email != EmailAddress('') &&
                                            state.password != Password(''),
                                    backgroundColor: primaryColor,
                                    textStyle: whiteTextFont.copyWith(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    onPressed: () =>
                                        context.read<AuthBloc>().add(
                                              const AuthEvent.signUp(),
                                            ),
                                  ),
                                ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: greyColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  'or',
                                  style: greyTextFont.copyWith(fontSize: 12),
                                ).tr(),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: greyColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              // TODO : comment sign up via facebook for now
                              // Expanded(
                              //   child: CustomElevatedButtonWidget(
                              //     text: 'Facebook',
                              //     backgroundColor: facebookColor,
                              //     icon: SvgPicture.asset(
                              //       AssetUrl.facebookIcon,
                              //       color: whiteColor,
                              //       height: 18,
                              //     ),
                              //     textStyle: whiteTextFont.copyWith(
                              //       fontWeight: FontWeight.w500,
                              //     ),
                              //     onPressed: () {
                              //       // TODO : implement later
                              //     },
                              //   ),
                              // ),
                              // const SizedBox(width: 18),
                              Expanded(
                                child: CustomElevatedButtonWidget(
                                  text: 'Gmail',
                                  backgroundColor: googleColor,
                                  icon: SvgPicture.asset(
                                    AssetUrl.googleIcon,
                                    color: whiteColor,
                                    height: 18,
                                  ),
                                  textStyle: whiteTextFont.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  onPressed: () {
                                    context.read<AuthBloc>().add(
                                          const AuthEvent
                                              .signUpOrSignInWithGoogle(),
                                        );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'alreadyHaveAnAccount',
                                style: secondaryTextFont.copyWith(
                                  fontSize: 12.0,
                                ),
                              ).tr(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () => context.read<PageBloc>().add(
                                        GotoSignInPage(),
                                      ),
                                  child: Text(
                                    'signIn',
                                    style: primaryTextFont.copyWith(
                                      fontSize: 12.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ).tr(),
                                ),
                              ),
                            ],
                          ),
                          AnimatedContainer(
                            duration: defaultDuration(),
                            height: keyboardSize(context) == 0 ? 40 : 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
