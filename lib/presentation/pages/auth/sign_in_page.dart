part of '../pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: const SignInPageScaffold(),
    );
  }
}

class SignInPageScaffold extends StatelessWidget {
  const SignInPageScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                color: backgroundColor.withOpacity(0.5),
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
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listenWhen: (previous, current) {
                      return previous.showSnackbar != current.showSnackbar;
                    },
                    listener: (_, state) {
                      state.optionFailureOrSuccessSignIn.match(
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
                                    orElse: () => 'Something went wrong ($f).',
                                  ),
                                ),
                              ),
                            );
                          },
                          (_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Account successfully created!',
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    builder: (_, state) {
                      return Form(
                        autovalidateMode: state.showErrorMessages
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(height: screenHeight(context) / 16),
                            Text(
                              'Welcome!',
                              style: blackTextFont.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            CustomTextFormField(
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              onChanged: (val) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.emailChanged(
                                        emailStr: val,
                                      ),
                                    );
                              },
                              validator: (val) =>
                                  EmailAddress(val!).getFoldValidator(),
                            ),
                            const SizedBox(height: 20.0),
                            CustomTextFormField(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              onChanged: (val) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.passwordChanged(
                                        passwordStr: val,
                                      ),
                                    );
                              },
                              validator: (val) =>
                                  Password(val!).getFoldValidator(),
                            ),
                            const SizedBox(height: 8.0),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot password?',
                                style: greyTextFont.copyWith(fontSize: 12.0),
                              ),
                            ),
                            const Spacer(),
                            state.onLoading
                                ? const CircularProgressIndicator(
                                    color: primaryColor,
                                  )
                                : Opacity(
                                    opacity: state.email == EmailAddress('') ||
                                            state.password == Password('')
                                        ? 0.5
                                        : 1,
                                    child: CustomElevatedButton(
                                      text: 'Sign In',
                                      isActive:
                                          state.email != EmailAddress('') &&
                                              state.password != Password(''),
                                      backgroundColor: primaryColor,
                                      textStyle: whiteTextFont.copyWith(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      onPressed: () {
                                        context.read<AuthBloc>().add(
                                              const AuthEvent.signIn(),
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
                                    'Or',
                                    style: greyTextFont.copyWith(fontSize: 12),
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
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: 'Guest',
                                    backgroundColor: backgroundColor,
                                    icon: SvgPicture.asset(
                                      'assets/icon/profile.svg',
                                      color: primaryColor,
                                      height: 20,
                                    ),
                                    textStyle: blackTextFont.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                const SizedBox(width: 18),
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: 'Gmail',
                                    backgroundColor: backgroundColor,
                                    icon: SvgPicture.asset(
                                      'assets/icon/gmail.svg',
                                      height: 18,
                                    ),
                                    textStyle: blackTextFont.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account yet?",
                                  style: secondaryTextFont.copyWith(
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => context.read<PageBloc>().add(
                                        GotoSignUpPage(),
                                      ),
                                  child: Text(
                                    'Register',
                                    style: primaryTextFont.copyWith(
                                      fontSize: 12.0,
                                      decoration: TextDecoration.underline,
                                    ),
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
                      );
                    },
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
