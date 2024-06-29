part of '../pages.dart';

class LinkAccountPage extends StatelessWidget {
  const LinkAccountPage({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PasswordTextFieldBloc>(
          create: (context) => getIt<PasswordTextFieldBloc>(),
        ),
        BlocProvider<HadithFlashcardBloc>(
          create: (context) => getIt<HadithFlashcardBloc>(),
        ),
      ],
      child: LinkAccountPageScaffold(
        userID: userID,
      ),
    );
  }
}

class LinkAccountPageScaffold extends StatelessWidget {
  const LinkAccountPageScaffold({
    super.key,
    required this.userID,
  });

  final UniqueString userID;

  @override
  Widget build(BuildContext context) {
    final savedFlashcards =
        context.read<HadithFlashcardBloc>().state.getFlashcards;

    return Scaffold(
      backgroundColor: colorScheme().surface,
      body: BlocProvider<AuthBloc>.value(
        value: BlocProvider.of<AuthBloc>(context),
        child: Stack(
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
                        debugPrint('asdasdasdasd 11111');

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
                            (_) {
                              debugPrint('asdasdasdasd 222222');

                              // Migrate the flashcards
                              context.read<HadithFlashcardBloc>().add(
                                    HadithFlashcardEvent.migrateFlashcards(
                                      userID: userID,
                                      flashcards: savedFlashcards,
                                    ),
                                  );

                              Get.back<bool>(
                                result: true,
                              );
                            },
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
                                    'linkAccount'.tr,
                                    style: adaptiveTextFont().copyWith(
                                      fontSize: 24,
                                      color: colorScheme()
                                          .primary
                                          .withOpacity(0.5),
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
                              selector: (state) =>
                                  state.isSignUpTextFieldObscure,
                              builder: (context, isSignUpTextFieldObscure) {
                                return CustomTextFormFieldWidget(
                                  labelText: 'password'.tr,
                                  hintText: 'enterYourPassword'.tr,
                                  fillColor:
                                      colorScheme().surface.withOpacity(0.6),
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
                                      text: 'link'.tr,
                                      isEnabled:
                                          state.email != EmailAddress('') &&
                                              state.password != Password(''),
                                      backgroundColor: primaryColor,
                                      textStyle: adaptiveTextFont().copyWith(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: colorScheme().inversePrimary,
                                      ),
                                      onPressed: () {
                                        // Link account with email
                                        context.read<AuthBloc>().add(
                                              const AuthEvent.signUp(
                                                isLinking: true,
                                              ),
                                            );
                                      },
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
                                      // Link account with google
                                      context.read<AuthBloc>().add(
                                            const AuthEvent
                                                .signUpOrSignInWithGoogle(
                                              isLinking: true,
                                            ),
                                          );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24.0),
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
            SafeArea(
              child: GestureDetector(
                onTap: () {
                  Get.back<bool>(
                    result: false,
                  );
                },
                child: Row(
                  children: [
                    const SizedBox(width: defaultMargin),
                    Icon(
                      MdiIcons.arrowLeft,
                      size: 26.0,
                      color: colorScheme().inversePrimary,
                    ),
                    const SizedBox(width: 6.0),
                    Text(
                      'back'.tr,
                      style: adaptiveTextFont().copyWith(
                        fontSize: 14.0,
                        color: colorScheme().inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}