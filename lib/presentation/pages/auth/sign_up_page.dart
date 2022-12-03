import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page'),
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
                    duration: const Duration(seconds: 1),
                    content: Text(
                      CommonUtils.firebaseMessageSplit(
                        message: f.toString(),
                      ),
                    ),
                  ),
                );
              },
              (r) {
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
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: defaultBorderRadius(),
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
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: defaultBorderRadius()),
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
                const SizedBox(height: 20.0),
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
                          backgroundColor: state.email == EmailAddress('') ||
                                  state.password == Password('')
                              ? Colors.grey
                              : Colors.blue,
                        ),
                        onPressed: state.email == EmailAddress('') ||
                                state.password == Password('')
                            ? () {}
                            : () {
                                context.read<AuthBloc>().add(
                                      const AuthEvent.signUp(),
                                    );
                              },
                        child: const Text(
                          'Sign Up',
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
