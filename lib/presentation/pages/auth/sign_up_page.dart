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
      child: StreamBuilder(
        stream: IAuthRepository.userStream,
        initialData: FirebaseAuth.instance.currentUser,
        builder: (context, snapshot) {
          final user = snapshot.data;

          if (user != null) {
            return HomePage(
              userID: UniqueString.fromUniqueString(user.uid),
              pageIndex: 1,
            );
          }

          return const SignUpPageScaffold();
        },
      ),
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
      backgroundColor: colorScheme().surface,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: primaryColor,
            padding: EdgeInsets.only(
              top: screenHeight() / 8,
            ),
            child: Text(
              'Hadith Flashcard',
              textAlign: TextAlign.center,
              style: adaptiveTextFont().copyWith(
                fontSize: 24.0,
                color: colorScheme().inversePrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight() / 4.4,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 6.0,
              ),
              decoration: BoxDecoration(
                color: colorScheme().surface.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(34),
                  topLeft: Radius.circular(34),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight(),
            width: screenWidth(),
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                AnimatedContainer(
                  duration: defaultDuration(),
                  height: keyboardSize() == 0 ? screenHeight() / 4 : 0,
                ),
                AnimatedContainer(
                  duration: defaultDuration(),
                  height: keyboardSize() == 0
                      ? screenHeight() - screenHeight() / 4
                      : screenHeight() - keyboardSize(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme().surface,
                    borderRadius: const BorderRadius.only(
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
                            CommonUtils.customSnackbar(
                              isSuccess: false,
                              message: f.maybeMap(
                                handledByFirebase: (s) => s.message,
                                orElse: () =>
                                    '${'somethingWentWrong'.tr} (${f.message}).',
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
                          SizedBox(height: screenHeight() / 16),
                          keyboardSize() == 0
                              ? Text(
                                  'createAnAccount'.tr,
                                  style: adaptiveTextFont().copyWith(
                                    fontSize: 24,
                                    color:
                                        colorScheme().primary.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const SizedBox(),
                          const SizedBox(height: 30.0),
                          CustomTextFormFieldWidget(
                            labelText: 'name'.tr,
                            hintText: 'enterYourName'.tr,
                            fillColor: colorScheme().surface.withOpacity(0.6),
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
                            hintText: 'enterYourEmail'.tr,
                            fillColor: colorScheme().surface.withOpacity(0.6),
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
                                labelText: 'password'.tr,
                                hintText: 'enterYourPassword'.tr,
                                fillColor:
                                    colorScheme().surface.withOpacity(0.2),
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
                                    text: 'signUp'.tr,
                                    isEnabled:
                                        state.email != EmailAddress('') &&
                                            state.password != Password(''),
                                    backgroundColor: primaryColor,
                                    textStyle: adaptiveTextFont().copyWith(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: colorScheme().inversePrimary,
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
                                  'or'.tr,
                                  style: adaptiveTextFont(applyOpacity: true)
                                      .copyWith(fontSize: 12),
                                ),
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
                              //       color: backgroundColor,
                              //       height: 18,
                              //     ),
                              //     textStyle: adaptiveTextFont().copyWith(
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
                                    colorFilter: ColorFilter.mode(
                                      colorScheme().inversePrimary,
                                      BlendMode.srcIn,
                                    ),
                                    height: 18,
                                  ),
                                  textStyle: adaptiveTextFont().copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme().inversePrimary,
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
                                'alreadyHaveAnAccount'.tr,
                                style: secondaryTextFont.copyWith(
                                  fontSize: 12.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                  vertical: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(
                                      () => const SignInPage(),
                                    );
                                  },
                                  child: Text(
                                    'signIn'.tr,
                                    style: primaryTextFont.copyWith(
                                      fontSize: 12.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          AnimatedContainer(
                            duration: defaultDuration(),
                            height: keyboardSize() == 0 ? 40 : 10,
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
