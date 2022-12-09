import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hadith_flashcard/application/auth/auth_bloc.dart';
import 'package:hadith_flashcard/domain/core/objects/string_objects.dart';
import 'package:hadith_flashcard/domain/core/shared/shared.dart';
import 'package:hadith_flashcard/injection.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
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
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Sign Up Page',
          style: whiteTextFont.copyWith(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) {
          return previous.showSnackbar != current.showSnackbar;
        },
        listener: (context, state) {
          state.optionFailureOrSuccess.match(
            () => null,
            (either) => either.fold(
              (f) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    content: Text(
                      CommonUtils.firebaseMessageSplit(
                        message: f.toString(),
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
                          labelText: 'Name',
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
                                AuthEvent.nameChanged(
                                  nameStr: val,
                                ),
                              );
                        },
                        validator: (_) => state.name.getFoldValidator(
                          exceptEmpty: true,
                        ),
                      ),
                      const SizedBox(height: 20.0),
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
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                            screenWidth(context),
                            46.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: defaultBorderRadius(),
                          ),
                          backgroundColor: state.name == PersonName('') ||
                                  state.email == EmailAddress('') ||
                                  state.password == Password('')
                              ? backgroundColor
                              : primaryColor,
                        ),
                        onPressed: state.name == PersonName('') ||
                                state.email == EmailAddress('') ||
                                state.password == Password('')
                            ? () {}
                            : () {
                                context.read<AuthBloc>().add(
                                      const AuthEvent.signUp(),
                                    );
                              },
                        child: Text(
                          'Sign Up',
                          style: state.name == PersonName('') ||
                                  state.email == EmailAddress('') ||
                                  state.password == Password('')
                              ? secondaryTextFont.copyWith(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                )
                              : whiteTextFont.copyWith(
                                  fontSize: 16.0,
                                ),
                        ),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: secondaryTextFont,
                    ),
                    TextButton(
                      onPressed: () {
                        context.go(
                          '/signin',
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: primaryTextFont.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
