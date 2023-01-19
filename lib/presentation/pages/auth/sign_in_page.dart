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
    GlobalKey formKey = GlobalKey();

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Sign In Page'),
        backgroundColor: primaryColor,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) {
          return previous.showSnackbar != current.showSnackbar;
        },
        listener: (context, state) {
          state.optionFailureOrSuccessSignIn.match(
            () => null,
            (either) => either.fold(
              (f) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(
                      seconds: 2,
                    ),
                    content: Text(f.maybeMap(
                      handledByFirebase: (s) => s.message,
                      orElse: () => 'Something went wrong ($f).',
                    )),
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
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              children: [
                const SizedBox(height: 40.0),
                Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: primaryTextFont,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: primaryTextFont,
                          filled: true,
                          fillColor: backgroundColor,
                          border: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                        ),
                        onChanged: (val) {
                          //tempDebugPrint
                          debugPrint(val);
                          context.read<AuthBloc>().add(
                                AuthEvent.emailChanged(
                                  emailStr: val,
                                ),
                              );
                        },
                        validator: (_) => state.email.getFoldValidator(
                          exceptEmpty: true,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        style: primaryTextFont,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: primaryTextFont,
                          filled: true,
                          fillColor: backgroundColor,
                          border: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 2.0,
                            ),
                          ),
                        ),
                        onChanged: (val) {
                          //tempDebugPrint
                          debugPrint(val);
                          context.read<AuthBloc>().add(
                                AuthEvent.passwordChanged(
                                  passwordStr: val,
                                ),
                              );
                        },
                        validator: (_) => state.password.getFoldValidator(
                          exceptEmpty: true,
                        ),
                      ),
                    ],
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
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              screenWidth(context),
                              46.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: defaultBorderRadius(),
                            ),
                            backgroundColor: state.email == EmailAddress('') ||
                                    state.password == Password('')
                                ? backgroundColor
                                : primaryColor,
                          ),
                          onPressed: state.email == EmailAddress('') ||
                                  state.password == Password('')
                              ? () {}
                              : () {
                                  context.read<AuthBloc>().add(
                                        const AuthEvent.signIn(),
                                      );
                                },
                          child: Text(
                            'Sign In',
                            style: state.email == EmailAddress('') ||
                                    state.password == Password('')
                                ? primaryTextFont.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  )
                                : whiteTextFont.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          ),
                        ),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account yet?",
                      style: secondaryTextFont,
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     context.go(
                    //       '/signup',
                    //     );
                    //   },
                    //   child: Text(
                    //     'Sign Up',
                    //     style: primaryTextFont.copyWith(
                    //       decoration: TextDecoration.underline,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
